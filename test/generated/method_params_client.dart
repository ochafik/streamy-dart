/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library methodparamstest;
import 'dart:async';
import 'package:streamy/streamy.dart' as streamy;
import 'method_params_client_resources.dart' as res;

abstract class MethodParamsTestResourcesMixin {
  res.FoosResource _foos;
  res.FoosResource get foos {
    if (_foos == null) {
      _foos = new res.FoosResource(this as streamy.Root);
    }
    return _foos;
  }
}

class MethodParamsTest
    extends streamy.Root
    with MethodParamsTestResourcesMixin {
  static final API_TYPE = r'MethodParamsTest';
  String get apiType => API_TYPE;
  final streamy.TransactionStrategy _txStrategy;
  final streamy.RequestHandler requestHandler;
  final streamy.Tracer _tracer;
  MethodParamsTest(
      this.requestHandler,
      {String servicePath: 'paramsTest/v1/',
      streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY,
      streamy.TransactionStrategy txStrategy: null,
      streamy.Tracer tracer: const streamy.NoopTracer()}) :
          super(typeRegistry, servicePath),
          this._txStrategy = txStrategy,
          this._tracer = tracer;
  Stream send(streamy.Request request) =>
      requestHandler.handle(request, _tracer.trace(request));
  MethodParamsTestTransaction beginTransaction() =>
      new MethodParamsTestTransaction(typeRegistry, servicePath,
          _txStrategy.beginTransaction());
}

/// Provides the same API as [MethodParamsTest] but runs all requests as
/// part of the same transaction.
class MethodParamsTestTransaction
    extends streamy.TransactionRoot
    with MethodParamsTestResourcesMixin {
  static final API_TYPE = r'MethodParamsTestTransaction';
  String get apiType => API_TYPE;
  MethodParamsTestTransaction(
      streamy.TypeRegistry typeRegistry,
      String servicePath,
      streamy.Transaction tx) : super(typeRegistry, servicePath, tx);
}
