import 'dart:io';

//async 表示这是一个异步方法,await必须再async方法中使用
//异步方法只能返回 void和Future
Future<String> readFile() async {
  //await 等待future执行完成再执行后续代码
  String content = await new File(r"C:\Users\admin\Desktop\tt.txt").readAsString();
  String content2 = await new File(r"C:\Users\admin\Desktop\tt_write.txt").readAsString();
  //自动转换为 future
  return content + content2;
}

void main() {

  readFile().then((value) {
    print("value1:$value");
  });

  // readFile2((e){
  //   print(e);
  // });

}
// 等同于以上readFile() 但是readFile2会陷入到回调地狱
void readFile2(void callback(s)){
  String result = "";
  new File(r"C:\Users\admin\Desktop\tt.txt").readAsString().then((value){
    result += value;
    print(value);
    // return result;
  }).then((value) {
    new File(r"C:\Users\admin\Desktop\tt_write.txt").readAsString().then((value) {
      result += value;
      callback(result);
    });
  });

}
