///
//  Generated code. Do not modify.
///
library urlshortener_mixin.pb;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';


class Url extends GeneratedMessage with UrlMixin {
  Url() : super();
  Url.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Url.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Url clone() => new Url()..mergeFromMessage(this);
}
abstract class UrlMixin {
  static final BuilderInfo _i = new BuilderInfo('Url')
    ..a(1, 'id', GeneratedMessage.OS)
    ..a(2, 'longUrl', GeneratedMessage.OS)
    ..a(3, 'status', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;
  BuilderInfo get info_ => _i;

  String get id => getField(1);
  void set id(String v) { setField(1, v); }
  bool hasId() => hasField(1);
  void clearId() => clearField(1);

  String get longUrl => getField(2);
  void set longUrl(String v) { setField(2, v); }
  bool hasLongUrl() => hasField(2);
  void clearLongUrl() => clearField(2);

  String get status => getField(3);
  void set status(String v) { setField(3, v); }
  bool hasStatus() => hasField(3);
  void clearStatus() => clearField(3);
}

class GetRequest extends GeneratedMessage with GetRequestMixin {
  GetRequest() : super();
  GetRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetRequest clone() => new GetRequest()..mergeFromMessage(this);
}
abstract class GetRequestMixin {
  static final BuilderInfo _i = new BuilderInfo('GetRequest')
    ..a(1, 'shortUrl', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;
  BuilderInfo get info_ => _i;

  String get shortUrl => getField(1);
  void set shortUrl(String v) { setField(1, v); }
  bool hasShortUrl() => hasField(1);
  void clearShortUrl() => clearField(1);
}

class UrlHistory extends GeneratedMessage with UrlHistoryMixin {
  UrlHistory() : super();
  UrlHistory.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UrlHistory.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UrlHistory clone() => new UrlHistory()..mergeFromMessage(this);
}
abstract class UrlHistoryMixin {
  static final BuilderInfo _i = new BuilderInfo('UrlHistory')
    ..m(1, 'items', () => new Url(), () => new PbList<Url>())
    ..a(2, 'itemsPerPage', GeneratedMessage.O3)
    ..a(3, 'kind', GeneratedMessage.OS)
    ..a(4, 'nextPageToken', GeneratedMessage.OS)
    ..a(5, 'totalItems', GeneratedMessage.O3)
    ..hasRequiredFields = false
  ;
  BuilderInfo get info_ => _i;

  List<Url> get items => getField(1);

  int get itemsPerPage => getField(2);
  void set itemsPerPage(int v) { setField(2, v); }
  bool hasItemsPerPage() => hasField(2);
  void clearItemsPerPage() => clearField(2);

  String get kind => getField(3);
  void set kind(String v) { setField(3, v); }
  bool hasKind() => hasField(3);
  void clearKind() => clearField(3);

  String get nextPageToken => getField(4);
  void set nextPageToken(String v) { setField(4, v); }
  bool hasNextPageToken() => hasField(4);
  void clearNextPageToken() => clearField(4);

  int get totalItems => getField(5);
  void set totalItems(int v) { setField(5, v); }
  bool hasTotalItems() => hasField(5);
  void clearTotalItems() => clearField(5);
}

class ListRequest extends GeneratedMessage with ListRequestMixin {
  ListRequest() : super();
  ListRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListRequest clone() => new ListRequest()..mergeFromMessage(this);
}
abstract class ListRequestMixin {
  static final BuilderInfo _i = new BuilderInfo('ListRequest')
    ..a(1, 'projection', GeneratedMessage.OS)
    ..a(2, 'startToken', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;
  BuilderInfo get info_ => _i;

  String get projection => getField(1);
  void set projection(String v) { setField(1, v); }
  bool hasProjection() => hasField(1);
  void clearProjection() => clearField(1);

  String get startToken => getField(2);
  void set startToken(String v) { setField(2, v); }
  bool hasStartToken() => hasField(2);
  void clearStartToken() => clearField(2);
}

class ListResponse extends GeneratedMessage with ListResponseMixin {
  ListResponse() : super();
  ListResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListResponse clone() => new ListResponse()..mergeFromMessage(this);
}
abstract class ListResponseMixin {
  static final BuilderInfo _i = new BuilderInfo('ListResponse')
    ..m(1, 'url', () => new Url(), () => new PbList<Url>())
    ..hasRequiredFields = false
  ;
  BuilderInfo get info_ => _i;

  List<Url> get url => getField(1);
}
