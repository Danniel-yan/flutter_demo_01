
import 'package:flutter/material.dart';

void main()=> runApp(MyApp2());

// 不提供状态更新
class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  String? data;
  MyApp(){
    Future.delayed(Duration(seconds: 5)).then((value) {
      data = "你好帅！！！";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("哈哈")),
      body: Center(child:  Text(data??"")),
    ));
  }
}


// 提供状态更新
class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {

  String data = "我好帅";

  _MyApp2State(){
    Future.delayed(Duration(seconds: 3)).then((value) {
      this.data = "你好帅啊！！！";
      debugPrint("1111111");
      //修改状态 updateState 刷新ui 重绘 调用build方法
      setState(() {
        debugPrint("2222222");
      });
    });
  }

  //oncreate
  ///当Widget第一次插入到Widget树时会被调用，对于每一个State对象，
  ///Flutter framework只会调用一次该回调
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  ///初始化时，在initState()之后立刻调用
  ///当依赖的InheritedWidget rebuild,会触发此接口被调用
@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  ///绘制界面，当setState触发的时候会再次被调用
  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("哈哈")),
      body: Center(child:  Text(data??"")),
    ));
  }

  ///状态改变的时候会调用该方法,比如调用了setState
  @override
  void didUpdateWidget(covariant MyApp2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  //onstop
  ///当State对象从树中被移除时，会调用此回调
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  //distroy
  ///当State对象从树中被永久移除时调用；通常在此回调中释放资源
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
