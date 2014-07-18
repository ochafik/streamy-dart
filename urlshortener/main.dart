import 'lib/discovery/urlshortener.dart' as disc;
import 'lib/discovery/urlshortener_objects.dart' as disc_objects;

import 'lib/proto/urlshortener.dart' as proto;
import 'lib/proto/urlshortener_objects.dart' as proto_objects;

import 'package:streamy/impl_server.dart';

main(List<String> args) {
  args = ["http://www.google.com"];

  {
    var requestHandler = new ServerRequestHandler();
    var api = new disc.Urlshortener(requestHandler);
    api.url.insert(new disc_objects.Url()..longUrl = args[0])
      .send().listen((disc_objects.Url response) {
        print('Shortened to ${response.id}');
      });
  }
  
  {
    var requestHandler = new ServerRequestHandler();
    var api = new proto.UrlShortener(requestHandler);
    api.url.insert(new proto_objects.Url()..longUrl = args[0])
      .send().listen((proto_objects.Url response) {
        print('Shortened to ${response.id}');
      });
  }
}
