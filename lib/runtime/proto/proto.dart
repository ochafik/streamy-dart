library streamy.runtime.proto;

import 'package:streamy/streamy.dart' as streamy;
import 'dart:async';
import 'package:protobuf/protobuf.dart';
import 'dart:convert';
import 'package:observe/observe.dart';
import 'package:streamy/streamy.dart';

part 'observable_generated_message.dart';
part 'generated_message_entity.dart';
part 'proto_request.dart';
part 'proto_root.dart';

class StreamyProtoEntityWrapper<T extends GeneratedMessage> extends streamy.EntityWrapper with Observable {
  StreamyProtoEntityWrapper.wrap(streamy.Entity delegate, streamy.EntityWrapper cloneFn(streamy.Entity delegateClone)) : super.wrap(delegate, cloneFn);

  // TODO: implement streamyType
  @override
  Type get streamyType => null;
}
