import 'lib/mixin/urlshortener.dart' as mixin;
import 'lib/mixin/urlshortener_objects.dart' as mixin_objects;

//import 'lib/discovery/urlshortener.dart' as discovery;
//import 'lib/discovery/urlshortener_objects.dart' as discovery_objects;

//import 'lib/wrapped/urlshortener.dart' as wrapped;
//import 'lib/wrapped/urlshortener_objects.dart' as wrapped_objects;

import 'package:streamy/impl_server.dart';

import 'package:protobuf/protobuf.dart';


main(List<String> args) {
  args = ["http://www.google.com"];

  /*
  // Discovery
  {
    var requestHandler = new ServerRequestHandler();
    var api = new discovery.Urlshortener(requestHandler);
    api.url.insert(new discovery_objects.Url()..longUrl = args[0])
      .send().listen((discovery_objects.Url response) {
        print('Shortened to ${response.id}');
      });
  }
  // */
  
  /*
  /// Wrapped: [GeneratedMessage] inside an [ObservableGeneratedMessage].
  {
    var requestHandler = new ServerRequestHandler();
    var api = new proto.UrlShortener(requestHandler);
    api.url.insert(new proto_objects.Url()..longUrl = args[0])
      .send().listen((proto_objects.Url response) {
        print('Shortened to ${response.id}');
      });
  }
  // */
  
  //*
  /// Mixin: [GeneratedMessageMixin] mixed in a [GeneratedMessageEntity].
  {
    var requestHandler = new ServerRequestHandler();
    var api = new mixin.UrlShortener(requestHandler);
    api.url.insert(new mixin_objects.Url()..longUrl = args[0])
      .send().listen((mixin_objects.Url response) {
        print('Shortened to ${response.id}');
      });
  }
  // */
}
