/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library urlshortener.requests;
import 'dart:async';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:streamy/streamy.dart' as streamy;
import 'urlshortener_objects.dart' as obj;

/// Expands a short URL or gets creation time and analytics.
class UrlGetRequest extends streamy.Request {
  static final List<String> KNOWN_PARAMETERS = [
    r'projection',
    r'shortUrl',
  ];
  static final API_TYPE = r'UrlGetRequest';
  String get apiType => API_TYPE;
  String get httpMethod => 'GET';
  String get pathFormat => 'url';
  bool get hasPayload => false;
  UrlGetRequest(streamy.Root root) : super(root) {
  }
  List<String> get pathParameters => const [];
  List<String> get queryParameters => const [r'projection',r'shortUrl',];

  /// Additional information to return.
  String get projection => parameters[r'projection'];
  set projection(String value) {
    parameters[r'projection'] = value;
  }
  String removeProjection() => parameters.remove(r'projection');

  /// The short URL, including the protocol.
  String get shortUrl => parameters[r'shortUrl'];
  set shortUrl(String value) {
    parameters[r'shortUrl'] = value;
  }
  String removeShortUrl() => parameters.remove(r'shortUrl');
  Stream<streamy.Response<obj.Url>> _sendDirect() => this.root.send(this);
  Stream<streamy.Response<obj.Url>> sendRaw() =>
      _sendDirect();
  Stream<obj.Url> send() =>
      _sendDirect().map((response) => response.entity);
  StreamSubscription<obj.Url> listen(void onData(obj.Url event)) =>
      _sendDirect().map((response) => response.entity).listen(onData);
  UrlGetRequest clone() => streamy.internalCloneFrom(new UrlGetRequest(root), this);
  streamy.Deserializer get responseDeserializer => (String str, streamy.Trace trace) =>
      new obj.Url.fromJsonString(str, trace, typeRegistry: root.typeRegistry);
}

/// Creates a new short URL.
class UrlInsertRequest extends streamy.Request {
  static final List<String> KNOWN_PARAMETERS = [
  ];
  static final API_TYPE = r'UrlInsertRequest';
  String get apiType => API_TYPE;
  obj.Url get payload => streamy.internalGetPayload(this);
  String get httpMethod => 'POST';
  String get pathFormat => 'url';
  bool get hasPayload => true;
  UrlInsertRequest(streamy.Root root, obj.Url payloadEntity) : super(root, payloadEntity) {
  }
  List<String> get pathParameters => const [];
  List<String> get queryParameters => const [];
  Stream<streamy.Response<obj.Url>> _sendDirect() => this.root.send(this);
  Stream<streamy.Response<obj.Url>> sendRaw() =>
      _sendDirect();
  Stream<obj.Url> send() =>
      _sendDirect().map((response) => response.entity);
  StreamSubscription<obj.Url> listen(void onData(obj.Url event)) =>
      _sendDirect().map((response) => response.entity).listen(onData);
  UrlInsertRequest clone() => streamy.internalCloneFrom(new UrlInsertRequest(root, payload.clone()), this);
  streamy.Deserializer get responseDeserializer => (String str, streamy.Trace trace) =>
      new obj.Url.fromJsonString(str, trace, typeRegistry: root.typeRegistry);
}

/// Retrieves a list of URLs shortened by a user.
class UrlListRequest extends streamy.Request {
  static final List<String> KNOWN_PARAMETERS = [
    r'projection',
    r'start-token',
  ];
  static final API_TYPE = r'UrlListRequest';
  String get apiType => API_TYPE;
  String get httpMethod => 'GET';
  String get pathFormat => 'url/history';
  bool get hasPayload => false;
  UrlListRequest(streamy.Root root) : super(root) {
  }
  List<String> get pathParameters => const [];
  List<String> get queryParameters => const [r'projection',r'start-token',];

  /// Additional information to return.
  String get projection => parameters[r'projection'];
  set projection(String value) {
    parameters[r'projection'] = value;
  }
  String removeProjection() => parameters.remove(r'projection');

  /// Token for requesting successive pages of results.
  String get start_token => parameters[r'start-token'];
  set start_token(String value) {
    parameters[r'start-token'] = value;
  }
  String removeStart_token() => parameters.remove(r'start-token');
  Stream<streamy.Response<obj.UrlHistory>> _sendDirect() => this.root.send(this);
  Stream<streamy.Response<obj.UrlHistory>> sendRaw() =>
      _sendDirect();
  Stream<obj.UrlHistory> send() =>
      _sendDirect().map((response) => response.entity);
  StreamSubscription<obj.UrlHistory> listen(void onData(obj.UrlHistory event)) =>
      _sendDirect().map((response) => response.entity).listen(onData);
  UrlListRequest clone() => streamy.internalCloneFrom(new UrlListRequest(root), this);
  streamy.Deserializer get responseDeserializer => (String str, streamy.Trace trace) =>
      new obj.UrlHistory.fromJsonString(str, trace, typeRegistry: root.typeRegistry);
}
