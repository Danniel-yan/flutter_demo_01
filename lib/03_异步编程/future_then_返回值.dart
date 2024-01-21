import 'dart:io';

// 通过then可以完成有序任务的执行，一个任务执行完成后，下一个任务根据上一个任务的结果 执行不同的操作
// 如果需要一组任务同时执行完毕后，再统一执行相同的一些处理

void main() {
/*

  var f = Future.delayed(Duration(seconds: 3));

  //future的执行结果 通过then方法获得
  f.then((value) {
    print("value:$value");
  });


  // 路径前面加上r 表示转义 否则无法正确识别文件路径； then方法可以得到future的结果 并且能得到一个新的Future
  new File(r"C:\Users\admin\Desktop\tt.txt").readAsString().then((value) {
    //返回void或Future
    print(value);
    // 如何拿到返回的1呢？
    return 1;
  }).then((value) {
    print("return返回的接受值：$value");
  }).catchError((e, s) {
    print("exception:$e");
    print("堆栈：$s");
  });

*/

  //处理一组任务时
  Future.wait([
    Future.delayed(Duration(seconds: 1)),
    Future.delayed(Duration(seconds: 5))
  ]).then((_) {
    print(1);
  });

  Future.forEach([1, 2, 3, 4], (element) {
    print(element);
  });
}
