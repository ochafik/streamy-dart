# Experiments on streamy+protobuf

Please read instructions in the `urlshortener` directory.

# Streamy for Dart (experimental)

[![Build Status](https://drone.io/github.com/google/streamy-dart/status.png)](https://drone.io/github.com/google/streamy-dart/latest)

Streamy is a feature-rich RPC/API framework for applications written using [Dart programming language](http://dartlang.org). It relies on [Google API Discovery](https://developers.google.com/discovery/) file format for API description. Streamy also provides out-of-the-box JSON-over-REST protocol.

## Using Streamy your application can:

* Access many Google APIs, such as Google Calendar API
* Talk to your own APIs built using [Google Cloud Endpoints](https://developers.google.com/appengine/docs/java/endpoints/)
* Talk to your own APIs hosted on your own servers and described using Google Discovery format

## Features

* Rich Entity/Request/Resource objects: mutable, immutable, observable with Map-like interface
* Fully customizable (in fact, fully replaceable) request handling pipeline
  - Caching
  - Request deduplication
  - API proxy
  - One-shot and keep-alive
  - Tracing
  - Out-of-the-box JSON-over-REST implementation
  - Transactional API
  - Request batching

## 5-Minute Tutorial

Let's write a command-line program that shortens URLs using Google URL Shortener API.

#### What you need for this tutorial

* Dart SDK (add Dart's ```bin``` folder to your ```PATH```)
* ```git``` (or Github for Windows/Mac)

### Get Full Streamy

The simplest way is to use git:

    > git clone https://github.com/google/streamy-dart.git streamy-dart
    > cd streamy-dart

#### Can't I just get it from ```pub```?

Yes, and no. You can and should use ```pub``` to import Streamy runtime library necessary to run your app. However, Streamy comes with command-line tools to work with Discovery files and generate API client libraries, so you need to download the full version.

### Get a Discovery file

Find one for the API you want to access. Let's use Google URL shortener as example:

    > curl https://www.googleapis.com/discovery/v1/apis/urlshortener/v1/rest >urlshortener.json

### Generate client library

    > pub get
    > dart bin/apigen.dart \
        --discovery-file=urlshortener.json \
        --client-file-name=urlshortener \
        --output-dir=urlshortener

#### What just happened?

The apigen.dart program provided by Streamy reads the discovery file (```urlshortener.json``` in the example) and produces a Dart file (```urlshortener.dart``` in the example) that contains an API client library for the API described in the discovery file. You can also give the library your own custom name (```urlshortener``` in the example).

### Use it

Let's create an entry point for our program, called ```main.dart```, which contains the following code:

```dart
import 'urlshortener.dart';
import 'package:streamy/impl_server.dart';

main(List<String> args) {
  var requestHandler = new ServerRequestHandler();
  var api = new Urlshortener(requestHandler);
  api.url.insert(new Url()..longUrl = args[0])
    .send().listen((Url response) {
      print('Shortened to ${response.id}');
    });
}
```

We are done. Let's run the program:

    > dart main.dart http://www.google.com

This should print something like:

    Shortened to http://goo.gl/fbsS

#### What just happened?

    import 'urlshortener.dart';

This line imports the API client library that we just generated from the discovery file.

    import 'package:streamy/impl_server.dart';

This import provides an implementation of Streamy's ```RequestHandler``` interface. This particular implementation works for server-side and command-line apps. If your app runs in the web-browser, use ```package:streamy/impl_html.dart``` and ```HtmlRequestHandler``` instead.

    main() {
      var requestHandler = new ServerRequestHandler();
      var api = new Urlshortener(requestHandler);

The above two lines instantiate a ```Urlshortener``` API client backed by ```ServerRequestHandler```.

      api.url.insert(new Url()..longUrl = args[0])

This is an example of how you create an API request. Streamy API generator generates a fully type-annotated root API class (```Urlshortener```), resources (```url```), resource methods (```insert```), entity classes (```Url```) as well as getters/setters for properties on the entities (```longUrl```), so you can use auto-completion in your IDE and rely on compiler warnings to tell you about issues in your usage of the API.

        .send().listen((Url response) {
          print('Shortened to ${response.id}');
        });

Finally, we ```.send()``` the request to the server and ```.listen(...)``` to a ```Stream``` of responses.

    }
