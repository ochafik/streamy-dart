library urlshortener_mixin;

import 'package:streamy/runtime/proto/proto.dart';
import 'package:streamy/streamy.dart' as streamy;
import 'urlshortener_services.dart' as serv;


abstract class UrlShortenerServicesMixin {
  serv.UrlService _url;
  serv.UrlService get url {
    if (_url == null) {
      _url = new serv.UrlService(this as streamy.Root);
    }
    return _url;
  }
}

class UrlShortener extends StreamyProtoRoot with UrlShortenerServicesMixin {
  
  UrlShortener(streamy.RequestHandler requestHandler,
      {String servicePath: '/adsense/service/dashboard',
      streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY,
      streamy.Tracer tracer: const streamy.NoopTracer()}) :
          super(typeRegistry, servicePath, requestHandler, tracer);
}
