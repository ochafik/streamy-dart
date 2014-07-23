/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library urlshortener_mixin.requests;
import 'dart:async';
import 'package:streamy/streamy.dart' as streamy;
import 'urlshortener_objects.dart' as obj;
import 'package:streamy/runtime/proto/proto.dart';


/// Expands a short URL or gets creation time and analytics.
class UrlGetRequest extends StreamyProtoRequest<obj.GetRequest, obj.Url> {
  String get apiType => r'UrlGetRequest';

  UrlGetRequest(StreamyProtoRoot root, obj.GetRequest payloadEntity) :
        super(root, payloadEntity, obj.Url.fromJson);
    
  /// The short URL, including the protocol.
  String get shortUrl => payload[r'shortUrl'];
  set shortUrl(String value) {
    payload[r'shortUrl'] = value;
  }
  String removeShortUrl() => payload.remove(r'shortUrl');
}

/// Creates a new short URL.
class UrlInsertRequest extends StreamyProtoRequest<obj.Url, obj.Url> {
  String get apiType => r'UrlInsertRequest';

  UrlInsertRequest(StreamyProtoRoot root, obj.Url payloadEntity) :
        super(root, payloadEntity, obj.Url.fromJson);
}

/// Retrieves a list of URLs shortened by a user.
class UrlListRequest extends StreamyProtoRequest<obj.ListRequest, obj.UrlHistory> {
  String get apiType => r'UrlListRequest';

  UrlListRequest(StreamyProtoRoot root, obj.ListRequest payloadEntity) :
        super(root, payloadEntity, obj.Url.fromJson);

  /// Additional information to return.
  String get projection => payload[r'projection'];
  set projection(String value) {
    payload[r'projection'] = value;
  }
  String removeProjection() => payload.remove(r'projection');

  /// Token for requesting successive pages of results.
  String get start_token => payload[r'start-token'];
  set start_token(String value) {
    payload[r'start-token'] = value;
  }
  String removeStart_token() => payload.remove(r'start-token');
}
