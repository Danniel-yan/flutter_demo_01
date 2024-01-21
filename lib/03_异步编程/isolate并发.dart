import 'dart:isolate';

void main(){
  // i1和i2输出内容交替出现 则说明以下Isolate的两条命令是在两个独立栈
  Isolate.spawn(i1, "");
  Isolate.spawn(i2, "");
}

//isolate并发有自己的任务队列
void i1(msg){
  print("isolate1 执行了");
  Future.doWhile(() {
    print("isolate1 future");
    return true;
  });
}
void i2(msg){
  print("isolate2 执行了");
  Future.doWhile(() {
    print("isolate2 future");

    return true;
  });

}