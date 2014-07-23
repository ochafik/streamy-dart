Experiments on adding protobuf support to streamy.

Since streamy.Entity and protobuf.GeneratedMessage can't be mixed in together, there's two hacks in one in here:
* `lib/wrapped`: Wrapping the original proto messages in [ObservableGeneratedMessage](https://github.com/ochafik/streamy-dart/blob/proto-mixin-experiments/lib/runtime/proto/observable_generated_message.dart) entity, and [wiring the setters and getters](https://github.com/ochafik/streamy-dart/blob/proto-mixin-experiments/urlshortener/lib/wrapped/urlshortener_objects.dart) (this requires lots of boilerplate)
* `lib/mixin`: Modifying dart-protobuf to get a [GeneratedMessageMixin](https://github.com/ochafik/dart-protobuf/blob/observable-mixins/lib/src/protobuf/generated_message.dart#L20), and [updating dart-protoc-plugin](https://github.com/ochafik/dart-protoc-plugin/blob/mixins-generator-for-streamy/lib/message_generator.dart#L93) to output [this kind of messages](https://github.com/ochafik/streamy-dart/blob/proto-mixin-experiments/urlshortener/lib/mixin/urlshortener.pb.dart) (with a [GeneratedMessageEntity](https://github.com/ochafik/streamy-dart/blob/proto-mixin-experiments/lib/runtime/proto/generated_message_entity.dart) base class). Then [entities are much simpler](https://github.com/ochafik/streamy-dart/blob/proto-mixin-experiments/urlshortener/lib/mixin/urlshortener_objects.dart) to generate.

To hack streamy-dart + the protoc compiler, run the following:

  ```
  git clone -b proto-mixin-experiments git@github.com:ochafik/streamy-dart.git ochafik-streamy-dart
  cd ochafik-streamy-dart
  git submodule init
  git submodule update
  
  cd urlshortener
  ./build.sh
  ```
