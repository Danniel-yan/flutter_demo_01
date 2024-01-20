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

  int q = 1;
  int r = 0xffffffffffffffff;

  bool b = false;

  /**
   * List数组
   */
  List<String> list3 = [];


  List<int> list4 = [1,2,3];
  int listA = list4[0];


  /**
   * iter 快捷键生成
   */
  for (var o in list4) {

  }

  /**
   * itar 快捷键生成
   */
  for (var j = 0; j < list4.length; ++j) {
    var o = list4[j];

  }

  /**
   * list对象 const修饰不可变
   */
  List<int> list5 = const[1,2,3];
  // list5.add(3);  //不对的 const是不可变 修饰谁 谁不可变
  list5 = [4,5,6]; // 可以

  const List<int> list6 = [1,2,3];
  // list6 = list5; // 不可以 修饰谁 谁不可变
  // list6.add(4); // 不可以

  /**
   * 映射集合map
   */
  Map<int, int> map = {1:1, 2:2, 3:3};
  print( map[1]);
  map[1] = 100;
  var map1 = const{1:2, 2:3};
  // 添加元素
  map[3] = 100;
  print(map);
  print(map1.keys);

  /**
   * Runs:特殊字符表示类 （Unicode 32）
   * 可能永远都不会用到
   */

  var clapping = '\u{1f44f}'; ///5个16进制 需要使用{}
  print(clapping);//👏
  //获得 16位代码单元
  print(clapping.codeUnits); //[55357, 56399]
  //获得unicode代码
  print(clapping.runes.toList()); //[128079]

  //fromCharCode 根据字符码创建字符串
  print( String.fromCharCode(128079));
  print( String.fromCharCodes(clapping.runes));
  print( String.fromCharCodes([55357, 56399]));
  print( String.fromCharCode(0x1f44f));

  Runes input = Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(String.fromCharCodes(input));

  /**
   * Symbols标识符号
   * 基本不会用到
   */
  var a = #sadsad;
  switch(a){
    case #A:
      break;
    case #sadsad:
      break;
  }
}