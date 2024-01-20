// 可选位置参数 要按照顺序传递
void fun([int i = 1, int j = 2]){

  print(i);
  print(j);
}

void main(){
  fun(0);
}