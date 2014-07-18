part of streamy.runtime.proto;

abstract class ObservableGeneratedMessage<T extends GeneratedMessage> extends streamy.Entity with Observable {
  final T message_;
  ObservableGeneratedMessage(this.message_): super.base();

  int _getTagNumber(String key) =>
      message_.info_.tagNumber(key.replaceAll(r'-', r'_'));
  
  @override
  operator [](String key) =>
      message_.getField(_getTagNumber(key));

  @override
  void operator []=(String key, value) {
    int tag = _getTagNumber(key);
    var oldValue = message_.getField(tag);
    message_.setField(tag, value);
    notifyPropertyChange(new Symbol(key), oldValue, value);
  }

  @override
  bool containsKey(String key) {
    int tag = _getTagNumber(key);
    return tag != null && message_.hasField(tag);
  }

  // TODO(ochafik): find out how to clone a GeneratedMessage.
//  @override
//  streamy.Entity clone() =>
//      new ObservableGeneratedMessage(_message.clone());

  @override
  List<String> get fieldNames =>
      message_.info_.byName.keys.toList();

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
    message_.clearField(_getTagNumber(key));
  }

  // TODO(ochafik): Allow returning a string, or make writeToJson return a Map.
  // @override Map toJson() => _message._toMap();
  @override Map toJson() => 
      new JsonDecoder().convert(message_.writeToJson());
}