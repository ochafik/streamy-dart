part of streamy.runtime.proto;

abstract class GeneratedMessageEntity
    extends streamy.Entity with Observable, GeneratedMessageMixin
    {
  GeneratedMessageEntity(): super.base();

  int _getTagNumber(String key) {
    var tag = info_.tagNumber(key.replaceAll(r'-', r'_'));
    if (tag == null) {
      throw new ArgumentError("Found no field with name $key!");
    }
    return tag;
  }

  @override
  operator [](String key) =>
      getField(_getTagNumber(key));

  @override
  void operator []=(String key, value) =>
      setField(_getTagNumber(key), value);

  @override
  void setField(int tagNumber, var value, [int fieldType = null]) {
    var fieldInfo = info_.fieldInfo[tagNumber];
    assert(fieldInfo != null);

    var oldValue = getField(tagNumber);
    super.setField(tagNumber, value, fieldType);
    notifyPropertyChange(new Symbol(fieldInfo.name), oldValue, value);
  }

  @override
  bool containsKey(String key) =>
      hasField(_getTagNumber(key));

  // TODO(ochafik): find out how to clone a GeneratedMessage.
//  @override
//  streamy.Entity clone() =>
//      new ObservableGeneratedMessage(_message.clone());

  @override
  List<String> get fieldNames =>
      info_.byName.keys.toList();

  @override
  bool get isFrozen => false;

  @override
  ObservableMap<String, dynamic> local = new ObservableMap<String, dynamic>(); 

  // TODO(ochafik): implement patch.
  @override
  streamy.Entity patch() =>
    throw new UnimplementedError();

  @override
  remove(String key) {
    clearField(_getTagNumber(key));
  }

  // TODO(ochafik): Allow returning a string, or make writeToJson return a Map.
  // @override Map toJson() => _message._toMap();
  @override Map toJson() => 
      new JsonDecoder().convert(writeToJson());
}