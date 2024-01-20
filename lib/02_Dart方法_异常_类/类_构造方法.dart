import 'package:flutter_demo_01/point.dart';

class View{
  View(int context, int attr);

  // 重定向构造方法
  View.a(int context):this(context, 0);
}

//
class ImmutabelPoint{
   final int? x;
   final int? y;

  //常量构造方法
   const ImmutabelPoint(this.x, this.y);

}

void main(){
  // int? m = Point(1,2).x;
  // print(m);
  //
  // var n = Point.X(5);
  // print(n.x);

  // 常量构造方法
  var p1 = const ImmutabelPoint(1, 2);
  var p2 = const ImmutabelPoint(1, 2);
  print(p1.hashCode == p2.hashCode); // true 表示为同一个对象；如果参数不同 则为两个对象

  var p3 =  ImmutabelPoint(1, 2);
  var p4 =  ImmutabelPoint(1, 2);
  print(p3.hashCode == p4.hashCode); // false 表示非一个对象


  print(Manager.getInstance());

}

class Manager{
  static Manager? _instance;

  // 工厂构造方法 必须返回一个实例对象 dart最常用
  factory Manager.getInstance(){

    _instance ??= Manager._newInstance();
    return _instance!!;
  }

  // // 不需要必须返回一个实例对象
  // static Manager get2(){
  //
  //   return Children();
  // }

  Manager._newInstance();
}

// class Children extends Manager{
//   Children.getInstance() : super.getInstance();
//
// }
