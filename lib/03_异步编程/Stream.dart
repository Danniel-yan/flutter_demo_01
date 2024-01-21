// 也用来操作异步任务（数据流的形式） 每次可以读取部分文件内容 效率高 可回调多次；Future一次性读取全部内容

import 'dart:io';
void main(){
  var newFile = File(r"C:\Users\admin\Desktop\tt_write.txt");
  var writor = newFile.openWrite();

/*  var fileStream = File(r"C:\Users\admin\Desktop\tt.txt").openRead();
  writor.addStream(fileStream); //直接将文件内容写入到另一个新文件或者使用一下分段数据流 writor.add(event);写入*/

  var fileStream = File(r"C:\Users\admin\Desktop\tt.txt").openRead();

  /**
   * Stream.listen的单订阅模式
   */
/*  var listen = fileStream.listen((event) {
    //可以回调多次
    print("stream1");

    //将文件重新写入新的文件
    writor.add(event);
    // print(event);
  });

  // listen.onData((data) {
  //   print("stream2");
  //   // print(data);
  // });

  listen.onDone(() {
    print("文件读完了");
  });*/

  // listen.pause();
  // listen.resume();
  // listen.cancel();

  //实现stream的多订阅 广播模式 不再使用Stream.listen的单订阅模式
  var broadcast = fileStream.asBroadcastStream();
  broadcast.listen((event) {
    print("event1");
  });

  broadcast.listen((event) {
    print("event2");
  });

}
