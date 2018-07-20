import 'package:flutter/material.dart';

class Task {
  final String name;
  final String category;
  final String time;
  final Color color;
  final bool completed;

  Task({this.name, this.category, this.time, this.color, this.completed});
}
class TaskRow extends StatefulWidget {
  final Task task;
  final double dotSize = 12.0;

  const TaskRow({Key key, this.task}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new TaskRowState();
  }
}
class TaskRowState extends State<TaskRow> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: new Row(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.symmetric(horizontal: 32.0 - widget.dotSize / 2),
            child: new Container(
              height: widget.dotSize,
              width: widget.dotSize,
              decoration: new BoxDecoration(shape: BoxShape.circle, color: widget.task.color),
            ),
          ),
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  widget.task.name,
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  widget.task.category,
                  style: new TextStyle(fontSize: 12.0, color: Colors.grey),
                )
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: new Text(
              widget.task.time,
              style: new TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class TasksFunctions{
  getList(){
      return [
    new Task(
      name: "Api Restful",
      category: "Web service",
      time: "2pm",
      color: Colors.orange,
      completed: false),
  new Task(
      name: "App Design",
      category: "UI/UX",
      time: "3pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Home Page",
      category: "frontEnd",
      time: "12pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Manage Users",
      category: "BackEnd",
      time: "10am",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "accept Visa",
      category: "Payment Integration",
      time: "2pm",
      color: Colors.pink,
      completed: false),
  new Task(
      name: "Api Restful",
      category: "Web service",
      time: "2pm",
      color: Colors.orange,
      completed: false),
  new Task(
      name: "App Design",
      category: "UI/UX",
      time: "3pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Home Page",
      category: "frontEnd",
      time: "12pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Manage Users",
      category: "BackEnd",
      time: "10am",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "accept Visa",
      category: "Payment Integration",
      time: "2pm",
      color: Colors.pink,
      completed: false),
];
  }
}
