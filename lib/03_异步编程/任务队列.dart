import 'dart:io';
import 'dart:isolate';

void main() {
  var receivePort = ReceivePort();
  receivePort.listen((message) {
    print("$message");
    // 每次执行任务队列就会去遍历一次微任务队列
    Future.microtask(() {
      print("微任务执行2");
    });
  });

  //在微任务队列中提交一个任务
  // Future.microtask(() {
  //   print("微任务执行1");
  //
  // });

  // 每次执行任务队列就会去遍历一次微任务队列
  receivePort.sendPort.send("message1");

  // Future.microtask(() {
  //   print("微任务执行2");
  // });

  // 每次执行任务队列就会去遍历一次微任务队列
  receivePort.sendPort.send("message2");

  // Future.microtask(() {
  //   print("微任务执行3");
  // });

  // 每次执行任务队列就会去遍历一次微任务队列
  receivePort.sendPort.send("message3");

  //main方法执行完成后 才会触发任务队列；也就是睡了10秒后 任务队列才被执行 串行执行
  // sleep(Duration(seconds: 10));

}
