//被mixins的類不可以有構造方法 滿足多繼承的需求
mixin E{
  void f(){
    print("e的f");
  }
}

mixin class F {
  void f() {
    print("f的f");
  }
}

class C with F,E{
  void f(){
    // super.f();
    print("c的f");
  }
}

//如何C類不需要自己本身的方法 則可以直接省略成以下方法
// class C = Object with F,E;

class M implements E,F{
  @override
  void e() {
    // TODO: implement e
  }

  @override
  void f() {
    // TODO: implement f
  }

}



void main() {
  var mC = C();
  // 如何有混入的相同方法 則首先調用本身類；然後繼承類位置后到前的順序
  mC.f();
}