library urlshortener_proto_.objects;

import 'urlshortener.pb.dart' as pb;
import 'package:streamy/runtime/proto/proto.dart';

class Url extends ObservableGeneratedMessage<pb.Url> {
  Url([pb.Url proto]) :
      super(proto == null ? new pb.Url() : proto);
  
  static fromJson(String i) => new Url(new pb.Url.fromJson(i));
  
  @override Url clone() => new Url(message_.clone());
  @override Type get streamyType => Url;
  
  /// The short URL, including the protocol.
  String get longUrl => this[r'longUrl'];
  set longUrl(String value) {
    this[r'longUrl'] = value;
  }
  String removeLongUrl() => this.remove(r'longUrl');
  
  /// The short URL, including the protocol.
  String get id => this[r'id'];
  set id(String value) {
    this[r'id'] = value;
  }
  String removeId() => this.remove(r'id');
  
  /// The short URL, including the protocol.
  String get status => this[r'status'];
  set status(String value) {
    this[r'status'] = value;
  }
  String removeStatus() => this.remove(r'status');
}

class UrlHistory extends ObservableGeneratedMessage<pb.UrlHistory> {
  UrlHistory([pb.UrlHistory proto]) :
      super(proto == null ? new pb.UrlHistory() : proto);
  
  static fromJson(String i) => new UrlHistory(new pb.UrlHistory.fromJson(i));
  
  @override UrlHistory clone() => new UrlHistory(message_.clone());
  @override Type get streamyType => UrlHistory;
}

class GetRequest extends ObservableGeneratedMessage<pb.GetRequest> {
  GetRequest([pb.GetRequest proto]) :
      super(proto == null ? new pb.GetRequest() : proto);
  
  static fromJson(String i) => new GetRequest(new pb.GetRequest.fromJson(i));
  
  @override GetRequest clone() => new GetRequest(message_.clone());
  @override Type get streamyType => GetRequest;
}

/// Meh.
class ListRequest extends ObservableGeneratedMessage<pb.ListRequest> {
  ListRequest([pb.ListRequest proto]) :
      super(proto == null ? new pb.ListRequest() : proto);
  
  static fromJson(String i) => new ListRequest(new pb.ListRequest.fromJson(i));
  
  @override ListRequest clone() => new ListRequest(message_.clone());
  @override Type get streamyType => ListRequest;
}