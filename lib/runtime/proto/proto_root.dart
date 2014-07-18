part of streamy.runtime.proto;

class StreamyProtoRoot extends streamy.Root {
  final RequestHandler requestHandler;
  final Tracer _tracer;
  StreamyProtoRoot(streamy.TypeRegistry typeRegistry,
                   String servicePath, 
                   this.requestHandler,
                     this._tracer) : super(typeRegistry, servicePath);

  @override
  Stream<streamy.Response> send(StreamyProtoRequest req) =>
      requestHandler.handle(req, _tracer.trace(req));
}
