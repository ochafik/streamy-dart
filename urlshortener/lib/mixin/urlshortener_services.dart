/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library urlshortener_mixin.services;
import 'package:streamy/streamy.dart' as streamy;
import 'urlshortener_requests.dart' as req;
import 'urlshortener_objects.dart' as obj;

class UrlService {
  final streamy.Root _root;
  static final List<String> KNOWN_METHODS = [
    r'get',
    r'insert',
    r'list',
  ];
  static final API_TYPE = r'UrlResource';
  String get apiType => API_TYPE;
  UrlService(this._root);

  /// Expands a short URL or gets creation time and analytics.
  req.UrlGetRequest get() {
    var request = new req.UrlGetRequest(_root);
    return request;
  }

  /// Creates a new short URL.
  req.UrlInsertRequest insert(obj.Url payload) {
    var request = new req.UrlInsertRequest(_root, payload);
    return request;
  }

  /// Retrieves a list of URLs shortened by a user.
  req.UrlListRequest list() {
    var request = new req.UrlListRequest(_root);
    return request;
  }
}
