import 'package:flutter/material.dart';
import 'package:midterm_practical/views/drawer.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  List<String> todos = [];

  void addTodo() {
    TextEditingController todoController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xfff8f8f8).withOpacity(0.7),
          title: Text(
            'Add Todo',
            style: TextStyle(fontFamily: 'PoppinsSemiBold'),
          ),
          content: TextField(
            controller: todoController,
            decoration: InputDecoration(hintText: 'Enter your todo'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (todoController.text.isNotEmpty) {
                  setState(() {
                    todos.add(todoController.text);
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add', style: TextStyle(fontFamily: 'Poppins')),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ],
        );
      },
    );
  }

  void deleteTodo(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff1B263B),
        title: Center(
          child: Text(
            'To-Do List',
            style: TextStyle(fontFamily: 'PoppinsSemiBold'),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              child: Image.asset(
                'assets/images/appW.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff778DA9), // Set the background color to yellow
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(todos[index]),
            onDismissed: (direction) {
              deleteTodo(index);
            },
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20.0),
            ),
            child: ListTile(
              leading: Icon(Icons.check), // Add a checkmark icon
              title: Text(todos[index]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTodo();
        },
        backgroundColor: Color(0xff1B263B),
        child: Icon(Icons.add),
      ),
    );
  }
}
