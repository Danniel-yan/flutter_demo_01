void test(){
  // throw new Exception("111");
  throw "test";
}

int test1(int i){
  if(i == 0){
    throw "1";
  }else if(i == 1){
    throw test1;
  }else{
    return 1;
  }

}

void main() {
  //介绍catch参数
  // try {
  //   test();
  // } catch (m, s) {
  //   print(m.runtimeType);
  //   print(m); // 异常类型
  //   print(s.runtimeType);
  //   print(s); //堆栈信息
  // }

  // 根据不同异常类型。进行不同处理
  // try {
  //   test();
  // } on Exception catch (e, s) {
  //   print("Exception");
  // } on int catch (e) {
  //   print("int");
  // } on String catch (e) {
  //   print("String");
  // }

  try {
    int r = test1(3);
    print(r);
    if (r == 0) {

    }
  } on Function catch (e) {
    print(111);
    print(e);
    // e("1111");
  } on String catch (e) {
    print("String");
  }on int catch (e) {
    print("int");
  }
}