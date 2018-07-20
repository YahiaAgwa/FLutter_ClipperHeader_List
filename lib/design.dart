import 'package:flutter/material.dart';
import './Tasks.dart';
import 'package:intl/intl.dart';

class DesignFunctions{
  List<Task> tasks = new TasksFunctions().getList();
   buildImage(){
    return new ClipPath(
      clipper: LogoClipper(),
      child: new Image.asset(
        'images/logo.png',
        fit:BoxFit.fill,
        height: 250.0,
      )
    );
  }
  buildHeader(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0,horizontal:8.0),
      child: new Row(
        children: <Widget>[
          Icon(Icons.menu,size:32.0,color:Colors.white),
          Expanded(
            child:  Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new Text(
                "Tasks",
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Icon(Icons.linear_scale,size:32.0,color:Colors.white),

        ],
      ),
    );
  }
  buildProfileRow(){
    return new Padding(
    padding: new EdgeInsets.only(left: 16.0, top: 250.0 / 2.5),
    child: new Row(
      children: <Widget>[
        new CircleAvatar(
          minRadius: 28.0,
          maxRadius: 28.0,
          backgroundImage: new AssetImage('images/yahia.jpg'),
        ),new Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Text(
                'Y.G',
                style: new TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              new Text(
                'CTO',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  }


buildBottomPart() {
  return new Padding(
    padding: new EdgeInsets.only(top: 250.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildMyTasksHeader(),
        buildTasksList(),
      ],
    ),
  );
}

//TODO
  buildTasksList() {
  final GlobalKey<AnimatedListState> _listKey = new GlobalKey<AnimatedListState>();

  return new Expanded(
      child: new AnimatedList(
        initialItemCount: tasks.length,
        key: _listKey,
        itemBuilder: (context, index, animation) {
          return new TaskRow(
            task: tasks[index],
          );
        },
      ),
    );
}

 buildMyTasksHeader() {
  return new Padding(
    padding: new EdgeInsets.only(left: 64.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          'My Tasks',
          style: new TextStyle(fontSize: 34.0),
        ),
        new Text(
          DateFormat.yMMMd().format(DateTime.now()),
          style: new TextStyle(color: Colors.grey, fontSize: 12.0),
        ),
      ],
    ),
  );
}
}

class LogoClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = new Path()
      ..lineTo(0.0, size.height-60.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0.0)
      ..close();
      return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }



}