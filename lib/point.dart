class Point {
  int? x;
  int? _y;//下滑线表示私有属性 相当于Java中的private

  Point(this.x, this._y);
  Point.Y(this._y); //命名构造方法
  Point.X(this.x);
  // Point(int x, int y);
  Point.XY(int y) {
    _y = y;
  }

  //参数初始化列表 初始化你类当中的属性 接受外部传入的不同数据对象
  Point.fromMap(Map map):x = map['x'], _y = map['y'];
}

// 类的定义如果使用下划线 也意味着是私有类 外部无法调用
class _LinePoint {
  int? x;
  int? _y; //下滑线表示私有属性 相当于Java中的private
}
