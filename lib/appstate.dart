import 'package:flutter/material.dart';


class _AppState extends InheritedWidget {
  _AppState({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  final AppStateState data;
  
  
  @override
  bool updateShouldNotify(_AppState oldWidget) {
    return true;
  }
}

class AppState extends StatefulWidget {
  AppState({
    Key key,
    this.child,
  }): super(key: key);

  final Widget child;

  @override
  AppStateState createState() => new AppStateState();

  static AppStateState of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(_AppState) as _AppState).data;
  }
}

class AppStateState extends State<AppState> {


  //match filter
  int counter = 0;
  
  set_counter(){
    setState(() {
      counter++;
    });
  }
  
  //snackbar

  
 
  @override
  void initState() { 
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return new _AppState(
      data: this,
      child: widget.child,
    );
  }
}

