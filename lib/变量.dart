void main(){
  Object i = "Tom";
  // var j = "Tom";
  //     j = 100; // 不可以 var在声明变量的那一刻，就决定了他是什么类型

  // var j;
  // j = "Tom";
  // j = 100; //可以

  // dynamic z = "Tom";
  // z = 100; //可以


  Object m = 1;
  var n = 1;
  dynamic z = 1; //类似Java的代理 反射 性能没有Object好

  final l = 1; //运行期常量
  // l = 2;  //不可变量 不可以修改
  // l = "m";//不可变量 不可以修改

  const o = 1; //编译器常量 运行前已经确定好的
  // o = 2; //不可变量 不可以修改

  // const p = l; // const不可以用final常量赋值，因为时间节点不一样 final是运行时才被赋值
  final p = o; // final可以用const赋值

}