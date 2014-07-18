part of streamy.runtime.proto;

typedef streamy.Entity JsonDeserializer(String json);

class StreamyProtoRequest<RequestPayload extends streamy.Entity, ResponsePayload extends streamy.Entity> extends streamy.Request {
  final JsonDeserializer _deserializer;
  StreamyProtoRequest(StreamyProtoRoot root, RequestPayload payloadEntity, this._deserializer) :
      super(root, payloadEntity);

  RequestPayload get payload => streamy.internalGetPayload(this);
  String get httpMethod => 'POST';
  String get pathFormat => 'url';
  bool get hasPayload => true;

  List<String> get pathParameters => const [];
  List<String> get queryParameters => const [];
  
  Stream<streamy.Response<ResponsePayload>> _sendDirect() =>
      this.root.send(this);
  
  Stream<streamy.Response<ResponsePayload>> sendRaw() =>
      _sendDirect();
  
  Stream<ResponsePayload> send() =>
      _sendDirect().map((response) => response.entity);
  
  StreamSubscription<ResponsePayload> listen(void onData(ResponsePayload event)) =>
      _sendDirect().map((response) => response.entity).listen(onData);
  
  StreamyProtoRequest<RequestPayload, ResponsePayload> clone() =>
      streamy.internalCloneFrom(new StreamyProtoRequest(root, payload.clone(), _deserializer), this);
  
  streamy.Deserializer get responseDeserializer => (String str, streamy.Trace trace) =>
      _deserializer(str);
}
