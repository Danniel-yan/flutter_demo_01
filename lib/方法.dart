void fun(Function f){

  f(1, 2, "3");
}

// 定义一个类型 F类型 这个F类型就是一个方法 接受两个int参数 返回void
typedef void F(int i, int j);

typedef void Fun(int i, int j);

void fun4(Fun f){

  f(4, 5);
}


void fun2(F f){
  f(1, 2);
}

// 写起来麻烦 所以 typedef出现了
void fun3(void fun(int i, int j)){

}


void main(){
  // 方法可以作为对象 可以赋值
  Function f = fun;
  //参数为匿名方法或lambda表达式或close闭包
  f((int i, int j, String str){
    print('输出了1');
    return "1";
  });

  fun2(int i, int j){
    print('fun2');
    return " 1";
  }

  fun2(2, 3);

  fun4(( i, j) {
    print('jjj' + i.toString() + " "+ j.toString());
  });

}

// java中的接口回调 传入接口对象
class OnClickListener{
  void click(){

  }
}
class Button{
  void setOnClickListener(OnClickListener listener){
    listener.click();
  }
}

//dart中可以使用回调方法
typedef void onClick();
class Button1{
  void setOnClickListenner(onClick listener){
    listener();
  }
}
