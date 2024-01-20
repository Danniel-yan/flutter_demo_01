
void main(){
  //类型判断操作符
  num j = 1;
  int i = j as int;
  // 47分钟（01：18：31）

  /**
   * 对象取是和非
   */
  Object i1 = 1;
  if(i1 is int){

  }

  if(i1 is! int){

  }

  /**
   * 赋值操作符
   */
  String? k;

  //java中
  k ??= "123";


  // ??= 安全赋值 如果k有值 这句话就当不存在 如果没值 就赋值456
  k ??= "456";
  print(k);

  /**
   * 条件表达式
   */
  k = null;
  var v = k ?? "789";
  print(v);  //输出->789

  /**
   * 级联操作符
   * java中一个.调用方法
   */
  Builder()
    ..a()
    ..b();

  /**
   * 安全操作符
   */
  String str1 = "";
  print(str1?.length);

}

class Builder{
  void a(){
    print("a方法");
  }
  void b(){
    print("b方法");
  }

}