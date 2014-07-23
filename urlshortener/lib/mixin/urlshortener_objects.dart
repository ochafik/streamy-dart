library urlshortener_mixin.objects;

import 'urlshortener.pb.dart' as pb;
import 'package:streamy/runtime/proto/proto.dart';

class Url extends GeneratedMessageEntity with pb.UrlMixin {
  Url() : super();
  
  static fromJson(String i) => new Url()..mergeFromJson(i);
  
  @override Url clone() => fromJson(writeToJson());
  @override Type get streamyType => Url;
}

class UrlHistory extends pb.UrlHistory {
  UrlHistory() : super();
  
  static fromJson(String i) => new UrlHistory()..mergeFromJson(i);
  
  @override UrlHistory clone() => fromJson(writeToJson());
  @override Type get streamyType => UrlHistory;
}

class GetRequest extends pb.GetRequest {
  GetRequest() : super();
  
  static fromJson(String i) => new GetRequest()..mergeFromJson(i);
  
  @override GetRequest clone() => fromJson(writeToJson());
  @override Type get streamyType => GetRequest;
}

/// Meh.
class ListRequest extends pb.ListRequest {
  ListRequest() : super();
  
  static fromJson(String i) => new ListRequest()..mergeFromJson(i);
  
  @override ListRequest clone() => fromJson(writeToJson());
  @override Type get streamyType => ListRequest;
}