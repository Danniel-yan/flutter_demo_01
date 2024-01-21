import 'dart:io';

void main() {
  var f = Future.delayed(Duration(seconds: 3));

  //future的执行结果 通过then方法获得
  f.then((value) {
    print("value:$value");
  });

  // var path = new File("C:\Users\admin\Desktop\tt.txt").path;
  // var isExists = new File("C:\Users\admin\Desktop\tt.txt").exists();

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
}
