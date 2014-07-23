Experiments on adding protobuf support to streamy.

Random notes:
* GeneratedMessage can't be mixed in (but would be easy to modify to be mixable: we could introduce an intermediate GeneratedMessageMixin with no constructor, inherited by GeneratedMessage)
* streamy.Entity and streamy.Request can't be mixed in (not sure how workaroundable this is)
* This first hack just wraps GeneratedMessage in manually created Entity / Request classes (using new base classes ObservableGeneratedMessage and StreamyProtoRequest that take lots of boilerplate out)

To hack streamy-dart + the protoc compiler, run the following:

  ```
  git clone -b proto-mixin-experiments git@github.com:ochafik/streamy-dart.git ochafik-streamy-dart
  git submodule init
  git submodule update
  
  cd ochafik-streamy-dart/urlshortener
  
  ./build.sh
  ```
