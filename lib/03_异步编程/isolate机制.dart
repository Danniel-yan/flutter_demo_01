// isolate机制 像进程一样的线程 属于内存隔离；java中线程是内存共享的，iso属于内存隔离;完成并发操作。
// Isolate 的工作原理是通过使用 Dart 的隔离机制来实现的。每个 Isolate 都运行在独立的隔离环境中，并且与其他
// Isolate 共享代码的副本。这意味着Isolate之间不能直接共享数据，而必须使用消息传递机制来进行通信。
import 'dart:io';
import 'dart:isolate';

int? i;
void main(){
  /**
   * 基本函数方法回调
   */
  // i = 10;
  // Isolate.spawn((msg){
  //   // i赋值无效 因为子iso与主iso内存隔离
  //   print(i);
  //   print("$msg回来了");
  // }, "hello");


  /**
   * 主iso线程与子线程（iso线程）交互
   */
  // 创建一个主iso消息接收器
  i = 10;
  var receivePort = ReceivePort();
  // 将消息接收器中的发送器 发给子isolate
  Isolate.spawn((sendPort) {
    i = 100;
    // print("$i");

    /**
     * 创建子iso消息接收器
     */
    var receivePort2 = ReceivePort();
    var sendPort2 = receivePort2.sendPort;

    // 将子isolate的sendPort发给主isolate
    sendPort.send(sendPort2);
    receivePort2.listen((message) {

      print("子iso收到的主iso消息:$message");
    });
    // sendPort2.send("子iso消息");

    sendPort.send(i);

    //子iso线程从主iso中监听读取消息
    
  }, receivePort.sendPort);

  print("主isolate:$i");
  // 主iso 从子iso消息接收器中监听读取消息
  receivePort.listen((message) {

    if(message is SendPort){
      print("主iso:要发消息给子iso了");
      //主ISO发送给子ISO消息
      message.send("主iso发送给子iso信息$i");
    }else {
      i = message;
      print("主iso:i的值由10变为$i");
    }
  });

  //dart作为单线程 此处睡眠5秒 会影响到主ISO的接收子ISO发过来的信息时间 因为消息驱动
  // sleep(const Duration(seconds: 5));

  // 发送消息
  // receivePort.sendPort.send("1");
  // receivePort.sendPort.send("2");

  //使用完要关闭掉
  // receivePort.close();


}

// 子isolate 类似于子线程
void msgCallBack(String msg){
  print("$msg回调回来了");
}