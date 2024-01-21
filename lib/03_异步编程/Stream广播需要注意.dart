import 'dart:async';
//广播的多订阅可以实现EventBus的功能
void main(){
  var stream = Stream.fromIterable([1,2,3,4]);

/*  // 多订阅
  stream.listen((event) {

    print(event);
  });

  stream.listen((event) {
    print(event);
  });*/

  //多订阅
  var broadcastStream = stream.asBroadcastStream();
  /*broadcastStream.listen((event) {
    print(event);
  });
  broadcastStream.listen((event) {
    print(event);
  });*/

  //===========================>
  //直接创建一个广播
  var streamController = StreamController.broadcast();
  streamController.add(1);

  //在发送完数据后才监听 不能获得数据
  streamController.stream.listen((event) {
    print(event);
  });

  broadcastStream.listen((event) {
    print(event);
  });

}