
import '../point.dart';

class Point{
  var x = 0;
  var y = 0;

  //运算符重载，定义+操作的行为
  Point operator +(Point other){
    var point = Point();
    point.x = x + other.x;
    return point;
  }

  String operator -(int i){
    return "相减了";
  }
}
void main(){
  var p1 = Point();
  var p2 = Point();
  var p3 = Point();
  // 默认隐式
  p1.x = 1;
  p2.x = 2;

  var p10 = p1.x + p2.x;

  //运算符重载后 才可以两个对象相加
  var p4 = p1 + p2 + p3;

  print(p3);
  print(p4);

  //灵活相减获取到字符串
  String str = p3 - 1;
  print(str);

  Call call = Call();
  // 默認調用call方法 call是固定的 不可改成其它名字
  call();


}

class A{
  void a(){

  }
}

// 继承类
class B extends A{

}

// 实现接口
class C implements A{
  @override
  void a() {

  }

}

class Call{
  void call(){}
}