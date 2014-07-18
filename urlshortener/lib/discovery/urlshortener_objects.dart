/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library urlshortener.objects;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:streamy/streamy.dart' as streamy;
import 'package:observe/observe.dart' as obs;

/// An EntityGlobalFn for AnalyticsSnapshot entities.
typedef dynamic AnalyticsSnapshotGlobalFn(AnalyticsSnapshot entity);

class AnalyticsSnapshot extends streamy.EntityWrapper {
  static final Map<String, streamy.GlobalRegistration> _globals = <String, streamy.GlobalRegistration>{};
  static final Set<String> KNOWN_PROPERTIES = new Set<String>.from([
    r'browsers',
    r'countries',
    r'longUrlClicks',
    r'platforms',
    r'referrers',
    r'shortUrlClicks',
  ]);
  static final API_TYPE = r'AnalyticsSnapshot';
  String get apiType => API_TYPE;

  /// Add a global computed synthetic property to this entity type, optionally memoized.
  static void addGlobal(String name, AnalyticsSnapshotGlobalFn computeFn,
      {bool memoize: false, List dependencies: null}) {
    _globals[name] = new streamy.GlobalRegistration(computeFn, dependencies, memoize);
  }
  AnalyticsSnapshot() : super.wrap(new streamy.RawEntity(), (cloned) => new AnalyticsSnapshot._wrap(cloned), globals: _globals);
  AnalyticsSnapshot.fromMap(Map map) : super.wrap(new streamy.RawEntity.fromMap(map), (cloned) => new AnalyticsSnapshot._wrap(cloned), globals: _globals);
  AnalyticsSnapshot.wrapMap(obs.ObservableMap map) : super.wrap(new streamy.RawEntity.wrapMap(map), (cloned) => new AnalyticsSnapshot._wrap(cloned), globals: _globals);
  AnalyticsSnapshot._wrap(streamy.Entity entity) : super.wrap(entity, (cloned) => new AnalyticsSnapshot._wrap(cloned), globals: _globals);
  AnalyticsSnapshot.wrap(streamy.Entity entity, streamy.EntityWrapperCloneFn cloneWrapper) :
      super.wrap(entity, (cloned) => cloneWrapper(cloned), globals: _globals);

  /// Top browsers, e.g. "Chrome"; sorted by (descending) click counts. Only present if this data is available.
  List<StringCount> get browsers => this[r'browsers'];
  set browsers(List<StringCount> value) {
    if (value != null && value is! obs.ObservableList) {
      value = new obs.ObservableList.from(value);
    }
    this[r'browsers'] = value;
  }
  List<StringCount> removeBrowsers() => remove(r'browsers');

  /// Top countries (expressed as country codes), e.g. "US" or "DE"; sorted by (descending) click counts. Only present if this data is available.
  List<StringCount> get countries => this[r'countries'];
  set countries(List<StringCount> value) {
    if (value != null && value is! obs.ObservableList) {
      value = new obs.ObservableList.from(value);
    }
    this[r'countries'] = value;
  }
  List<StringCount> removeCountries() => remove(r'countries');

  /// Number of clicks on all goo.gl short URLs pointing to this long URL.
  fixnum.Int64 get longUrlClicks => this[r'longUrlClicks'];
  set longUrlClicks(fixnum.Int64 value) {
    this[r'longUrlClicks'] = value;
  }
  fixnum.Int64 removeLongUrlClicks() => remove(r'longUrlClicks');

  /// Top platforms or OSes, e.g. "Windows"; sorted by (descending) click counts. Only present if this data is available.
  List<StringCount> get platforms => this[r'platforms'];
  set platforms(List<StringCount> value) {
    if (value != null && value is! obs.ObservableList) {
      value = new obs.ObservableList.from(value);
    }
    this[r'platforms'] = value;
  }
  List<StringCount> removePlatforms() => remove(r'platforms');

  /// Top referring hosts, e.g. "www.google.com"; sorted by (descending) click counts. Only present if this data is available.
  List<StringCount> get referrers => this[r'referrers'];
  set referrers(List<StringCount> value) {
    if (value != null && value is! obs.ObservableList) {
      value = new obs.ObservableList.from(value);
    }
    this[r'referrers'] = value;
  }
  List<StringCount> removeReferrers() => remove(r'referrers');

  /// Number of clicks on this short URL.
  fixnum.Int64 get shortUrlClicks => this[r'shortUrlClicks'];
  set shortUrlClicks(fixnum.Int64 value) {
    this[r'shortUrlClicks'] = value;
  }
  fixnum.Int64 removeShortUrlClicks() => remove(r'shortUrlClicks');
  factory AnalyticsSnapshot.fromJsonString(String strJson, streamy.Trace trace,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY}) =>
          new AnalyticsSnapshot.fromJson(streamy.jsonParse(strJson), typeRegistry: typeRegistry);
  static AnalyticsSnapshot entityFactory(Map json, streamy.TypeRegistry reg) =>
      new AnalyticsSnapshot.fromJson(json, typeRegistry: reg);
  factory AnalyticsSnapshot.fromJson(Map json,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY, bool copy: false}) {
    if (json == null) {
      return null;
    }
    if (copy) {
      json = new obs.ObservableMap.from(json);
    }
    if (json.containsKey(r'browsers')) {
      json[r'browsers'] = streamy.mapInline(((v) => new StringCount.fromJson(v)))(json[r'browsers']);
    }
    if (json.containsKey(r'countries')) {
      json[r'countries'] = streamy.mapInline(((v) => new StringCount.fromJson(v)))(json[r'countries']);
    }
    if (json.containsKey(r'longUrlClicks')) {
      json[r'longUrlClicks'] = streamy.atoi64(json[r'longUrlClicks']);
    }
    if (json.containsKey(r'platforms')) {
      json[r'platforms'] = streamy.mapInline(((v) => new StringCount.fromJson(v)))(json[r'platforms']);
    }
    if (json.containsKey(r'referrers')) {
      json[r'referrers'] = streamy.mapInline(((v) => new StringCount.fromJson(v)))(json[r'referrers']);
    }
    if (json.containsKey(r'shortUrlClicks')) {
      json[r'shortUrlClicks'] = streamy.atoi64(json[r'shortUrlClicks']);
    }
    streamy.deserializeUnknown(json, KNOWN_PROPERTIES, typeRegistry);
    return new AnalyticsSnapshot.wrapMap(json);
  }
  Map toJson() {
    Map json = super.toJson();
    streamy.serialize(json, r'longUrlClicks', streamy.str);
    streamy.serialize(json, r'shortUrlClicks', streamy.str);
    return json;
  }
  AnalyticsSnapshot clone() => super.clone();
  AnalyticsSnapshot patch() => super.patch();
  Type get streamyType => AnalyticsSnapshot;
}

/// An EntityGlobalFn for AnalyticsSummary entities.
typedef dynamic AnalyticsSummaryGlobalFn(AnalyticsSummary entity);

class AnalyticsSummary extends streamy.EntityWrapper {
  static final Map<String, streamy.GlobalRegistration> _globals = <String, streamy.GlobalRegistration>{};
  static final Set<String> KNOWN_PROPERTIES = new Set<String>.from([
    r'allTime',
    r'day',
    r'month',
    r'twoHours',
    r'week',
  ]);
  static final API_TYPE = r'AnalyticsSummary';
  String get apiType => API_TYPE;

  /// Add a global computed synthetic property to this entity type, optionally memoized.
  static void addGlobal(String name, AnalyticsSummaryGlobalFn computeFn,
      {bool memoize: false, List dependencies: null}) {
    _globals[name] = new streamy.GlobalRegistration(computeFn, dependencies, memoize);
  }
  AnalyticsSummary() : super.wrap(new streamy.RawEntity(), (cloned) => new AnalyticsSummary._wrap(cloned), globals: _globals);
  AnalyticsSummary.fromMap(Map map) : super.wrap(new streamy.RawEntity.fromMap(map), (cloned) => new AnalyticsSummary._wrap(cloned), globals: _globals);
  AnalyticsSummary.wrapMap(obs.ObservableMap map) : super.wrap(new streamy.RawEntity.wrapMap(map), (cloned) => new AnalyticsSummary._wrap(cloned), globals: _globals);
  AnalyticsSummary._wrap(streamy.Entity entity) : super.wrap(entity, (cloned) => new AnalyticsSummary._wrap(cloned), globals: _globals);
  AnalyticsSummary.wrap(streamy.Entity entity, streamy.EntityWrapperCloneFn cloneWrapper) :
      super.wrap(entity, (cloned) => cloneWrapper(cloned), globals: _globals);

  /// Click analytics over all time.
  AnalyticsSnapshot get allTime => this[r'allTime'];
  set allTime(AnalyticsSnapshot value) {
    this[r'allTime'] = value;
  }
  AnalyticsSnapshot removeAllTime() => remove(r'allTime');

  /// Click analytics over the last day.
  AnalyticsSnapshot get day => this[r'day'];
  set day(AnalyticsSnapshot value) {
    this[r'day'] = value;
  }
  AnalyticsSnapshot removeDay() => remove(r'day');

  /// Click analytics over the last month.
  AnalyticsSnapshot get month => this[r'month'];
  set month(AnalyticsSnapshot value) {
    this[r'month'] = value;
  }
  AnalyticsSnapshot removeMonth() => remove(r'month');

  /// Click analytics over the last two hours.
  AnalyticsSnapshot get twoHours => this[r'twoHours'];
  set twoHours(AnalyticsSnapshot value) {
    this[r'twoHours'] = value;
  }
  AnalyticsSnapshot removeTwoHours() => remove(r'twoHours');

  /// Click analytics over the last week.
  AnalyticsSnapshot get week => this[r'week'];
  set week(AnalyticsSnapshot value) {
    this[r'week'] = value;
  }
  AnalyticsSnapshot removeWeek() => remove(r'week');
  factory AnalyticsSummary.fromJsonString(String strJson, streamy.Trace trace,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY}) =>
          new AnalyticsSummary.fromJson(streamy.jsonParse(strJson), typeRegistry: typeRegistry);
  static AnalyticsSummary entityFactory(Map json, streamy.TypeRegistry reg) =>
      new AnalyticsSummary.fromJson(json, typeRegistry: reg);
  factory AnalyticsSummary.fromJson(Map json,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY, bool copy: false}) {
    if (json == null) {
      return null;
    }
    if (copy) {
      json = new obs.ObservableMap.from(json);
    }
    if (json.containsKey(r'allTime')) {
      json[r'allTime'] = ((v) => new AnalyticsSnapshot.fromJson(v))(json[r'allTime']);
    }
    if (json.containsKey(r'day')) {
      json[r'day'] = ((v) => new AnalyticsSnapshot.fromJson(v))(json[r'day']);
    }
    if (json.containsKey(r'month')) {
      json[r'month'] = ((v) => new AnalyticsSnapshot.fromJson(v))(json[r'month']);
    }
    if (json.containsKey(r'twoHours')) {
      json[r'twoHours'] = ((v) => new AnalyticsSnapshot.fromJson(v))(json[r'twoHours']);
    }
    if (json.containsKey(r'week')) {
      json[r'week'] = ((v) => new AnalyticsSnapshot.fromJson(v))(json[r'week']);
    }
    streamy.deserializeUnknown(json, KNOWN_PROPERTIES, typeRegistry);
    return new AnalyticsSummary.wrapMap(json);
  }
  AnalyticsSummary clone() => super.clone();
  AnalyticsSummary patch() => super.patch();
  Type get streamyType => AnalyticsSummary;
}

/// An EntityGlobalFn for StringCount entities.
typedef dynamic StringCountGlobalFn(StringCount entity);

class StringCount extends streamy.EntityWrapper {
  static final Map<String, streamy.GlobalRegistration> _globals = <String, streamy.GlobalRegistration>{};
  static final Set<String> KNOWN_PROPERTIES = new Set<String>.from([
    r'count',
    r'id',
  ]);
  static final API_TYPE = r'StringCount';
  String get apiType => API_TYPE;

  /// Add a global computed synthetic property to this entity type, optionally memoized.
  static void addGlobal(String name, StringCountGlobalFn computeFn,
      {bool memoize: false, List dependencies: null}) {
    _globals[name] = new streamy.GlobalRegistration(computeFn, dependencies, memoize);
  }
  StringCount() : super.wrap(new streamy.RawEntity(), (cloned) => new StringCount._wrap(cloned), globals: _globals);
  StringCount.fromMap(Map map) : super.wrap(new streamy.RawEntity.fromMap(map), (cloned) => new StringCount._wrap(cloned), globals: _globals);
  StringCount.wrapMap(obs.ObservableMap map) : super.wrap(new streamy.RawEntity.wrapMap(map), (cloned) => new StringCount._wrap(cloned), globals: _globals);
  StringCount._wrap(streamy.Entity entity) : super.wrap(entity, (cloned) => new StringCount._wrap(cloned), globals: _globals);
  StringCount.wrap(streamy.Entity entity, streamy.EntityWrapperCloneFn cloneWrapper) :
      super.wrap(entity, (cloned) => cloneWrapper(cloned), globals: _globals);

  /// Number of clicks for this top entry, e.g. for this particular country or browser.
  fixnum.Int64 get count => this[r'count'];
  set count(fixnum.Int64 value) {
    this[r'count'] = value;
  }
  fixnum.Int64 removeCount() => remove(r'count');

  /// Label assigned to this top entry, e.g. "US" or "Chrome".
  String get id => this[r'id'];
  set id(String value) {
    this[r'id'] = value;
  }
  String removeId() => remove(r'id');
  factory StringCount.fromJsonString(String strJson, streamy.Trace trace,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY}) =>
          new StringCount.fromJson(streamy.jsonParse(strJson), typeRegistry: typeRegistry);
  static StringCount entityFactory(Map json, streamy.TypeRegistry reg) =>
      new StringCount.fromJson(json, typeRegistry: reg);
  factory StringCount.fromJson(Map json,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY, bool copy: false}) {
    if (json == null) {
      return null;
    }
    if (copy) {
      json = new obs.ObservableMap.from(json);
    }
    if (json.containsKey(r'count')) {
      json[r'count'] = streamy.atoi64(json[r'count']);
    }
    streamy.deserializeUnknown(json, KNOWN_PROPERTIES, typeRegistry);
    return new StringCount.wrapMap(json);
  }
  Map toJson() {
    Map json = super.toJson();
    streamy.serialize(json, r'count', streamy.str);
    return json;
  }
  StringCount clone() => super.clone();
  StringCount patch() => super.patch();
  Type get streamyType => StringCount;
}

/// An EntityGlobalFn for Url entities.
typedef dynamic UrlGlobalFn(Url entity);

class Url extends streamy.EntityWrapper {
  static final Map<String, streamy.GlobalRegistration> _globals = <String, streamy.GlobalRegistration>{};
  static final Set<String> KNOWN_PROPERTIES = new Set<String>.from([
    r'analytics',
    r'created',
    r'id',
    r'kind',
    r'longUrl',
    r'status',
  ]);
  static final API_TYPE = r'Url';
  String get apiType => API_TYPE;

  /// Add a global computed synthetic property to this entity type, optionally memoized.
  static void addGlobal(String name, UrlGlobalFn computeFn,
      {bool memoize: false, List dependencies: null}) {
    _globals[name] = new streamy.GlobalRegistration(computeFn, dependencies, memoize);
  }
  Url() : super.wrap(new streamy.RawEntity(), (cloned) => new Url._wrap(cloned), globals: _globals);
  Url.fromMap(Map map) : super.wrap(new streamy.RawEntity.fromMap(map), (cloned) => new Url._wrap(cloned), globals: _globals);
  Url.wrapMap(obs.ObservableMap map) : super.wrap(new streamy.RawEntity.wrapMap(map), (cloned) => new Url._wrap(cloned), globals: _globals);
  Url._wrap(streamy.Entity entity) : super.wrap(entity, (cloned) => new Url._wrap(cloned), globals: _globals);
  Url.wrap(streamy.Entity entity, streamy.EntityWrapperCloneFn cloneWrapper) :
      super.wrap(entity, (cloned) => cloneWrapper(cloned), globals: _globals);

  /// A summary of the click analytics for the short and long URL. Might not be present if not requested or currently unavailable.
  AnalyticsSummary get analytics => this[r'analytics'];
  set analytics(AnalyticsSummary value) {
    this[r'analytics'] = value;
  }
  AnalyticsSummary removeAnalytics() => remove(r'analytics');

  /// Time the short URL was created; ISO 8601 representation using the yyyy-MM-dd'T'HH:mm:ss.SSSZZ format, e.g. "2010-10-14T19:01:24.944+00:00".
  String get created => this[r'created'];
  set created(String value) {
    this[r'created'] = value;
  }
  String removeCreated() => remove(r'created');

  /// Short URL, e.g. "http://goo.gl/l6MS".
  String get id => this[r'id'];
  set id(String value) {
    this[r'id'] = value;
  }
  String removeId() => remove(r'id');

  /// The fixed string "urlshortener#url".
  String get kind => this[r'kind'];
  set kind(String value) {
    this[r'kind'] = value;
  }
  String removeKind() => remove(r'kind');

  /// Long URL, e.g. "http://www.google.com/". Might not be present if the status is "REMOVED".
  String get longUrl => this[r'longUrl'];
  set longUrl(String value) {
    this[r'longUrl'] = value;
  }
  String removeLongUrl() => remove(r'longUrl');

  /// Status of the target URL. Possible values: "OK", "MALWARE", "PHISHING", or "REMOVED". A URL might be marked "REMOVED" if it was flagged as spam, for example.
  String get status => this[r'status'];
  set status(String value) {
    this[r'status'] = value;
  }
  String removeStatus() => remove(r'status');
  factory Url.fromJsonString(String strJson, streamy.Trace trace,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY}) =>
          new Url.fromJson(streamy.jsonParse(strJson), typeRegistry: typeRegistry);
  static Url entityFactory(Map json, streamy.TypeRegistry reg) =>
      new Url.fromJson(json, typeRegistry: reg);
  factory Url.fromJson(Map json,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY, bool copy: false}) {
    if (json == null) {
      return null;
    }
    if (copy) {
      json = new obs.ObservableMap.from(json);
    }
    if (json.containsKey(r'analytics')) {
      json[r'analytics'] = ((v) => new AnalyticsSummary.fromJson(v))(json[r'analytics']);
    }
    streamy.deserializeUnknown(json, KNOWN_PROPERTIES, typeRegistry);
    return new Url.wrapMap(json);
  }
  Url clone() => super.clone();
  Url patch() => super.patch();
  Type get streamyType => Url;
}

/// An EntityGlobalFn for UrlHistory entities.
typedef dynamic UrlHistoryGlobalFn(UrlHistory entity);

class UrlHistory extends streamy.EntityWrapper {
  static final Map<String, streamy.GlobalRegistration> _globals = <String, streamy.GlobalRegistration>{};
  static final Set<String> KNOWN_PROPERTIES = new Set<String>.from([
    r'items',
    r'itemsPerPage',
    r'kind',
    r'nextPageToken',
    r'totalItems',
  ]);
  static final API_TYPE = r'UrlHistory';
  String get apiType => API_TYPE;

  /// Add a global computed synthetic property to this entity type, optionally memoized.
  static void addGlobal(String name, UrlHistoryGlobalFn computeFn,
      {bool memoize: false, List dependencies: null}) {
    _globals[name] = new streamy.GlobalRegistration(computeFn, dependencies, memoize);
  }
  UrlHistory() : super.wrap(new streamy.RawEntity(), (cloned) => new UrlHistory._wrap(cloned), globals: _globals);
  UrlHistory.fromMap(Map map) : super.wrap(new streamy.RawEntity.fromMap(map), (cloned) => new UrlHistory._wrap(cloned), globals: _globals);
  UrlHistory.wrapMap(obs.ObservableMap map) : super.wrap(new streamy.RawEntity.wrapMap(map), (cloned) => new UrlHistory._wrap(cloned), globals: _globals);
  UrlHistory._wrap(streamy.Entity entity) : super.wrap(entity, (cloned) => new UrlHistory._wrap(cloned), globals: _globals);
  UrlHistory.wrap(streamy.Entity entity, streamy.EntityWrapperCloneFn cloneWrapper) :
      super.wrap(entity, (cloned) => cloneWrapper(cloned), globals: _globals);

  /// A list of URL resources.
  List<Url> get items => this[r'items'];
  set items(List<Url> value) {
    if (value != null && value is! obs.ObservableList) {
      value = new obs.ObservableList.from(value);
    }
    this[r'items'] = value;
  }
  List<Url> removeItems() => remove(r'items');

  /// Number of items returned with each full "page" of results. Note that the last page could have fewer items than the "itemsPerPage" value.
  int get itemsPerPage => this[r'itemsPerPage'];
  set itemsPerPage(int value) {
    this[r'itemsPerPage'] = value;
  }
  int removeItemsPerPage() => remove(r'itemsPerPage');

  /// The fixed string "urlshortener#urlHistory".
  String get kind => this[r'kind'];
  set kind(String value) {
    this[r'kind'] = value;
  }
  String removeKind() => remove(r'kind');

  /// A token to provide to get the next page of results.
  String get nextPageToken => this[r'nextPageToken'];
  set nextPageToken(String value) {
    this[r'nextPageToken'] = value;
  }
  String removeNextPageToken() => remove(r'nextPageToken');

  /// Total number of short URLs associated with this user (may be approximate).
  int get totalItems => this[r'totalItems'];
  set totalItems(int value) {
    this[r'totalItems'] = value;
  }
  int removeTotalItems() => remove(r'totalItems');
  factory UrlHistory.fromJsonString(String strJson, streamy.Trace trace,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY}) =>
          new UrlHistory.fromJson(streamy.jsonParse(strJson), typeRegistry: typeRegistry);
  static UrlHistory entityFactory(Map json, streamy.TypeRegistry reg) =>
      new UrlHistory.fromJson(json, typeRegistry: reg);
  factory UrlHistory.fromJson(Map json,
      {streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY, bool copy: false}) {
    if (json == null) {
      return null;
    }
    if (copy) {
      json = new obs.ObservableMap.from(json);
    }
    if (json.containsKey(r'items')) {
      json[r'items'] = streamy.mapInline(((v) => new Url.fromJson(v)))(json[r'items']);
    }
    streamy.deserializeUnknown(json, KNOWN_PROPERTIES, typeRegistry);
    return new UrlHistory.wrapMap(json);
  }
  UrlHistory clone() => super.clone();
  UrlHistory patch() => super.patch();
  Type get streamyType => UrlHistory;
}
