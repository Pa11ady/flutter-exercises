import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List todoList = [];
  String _userTodo = '';

  @override
  void initState() {
    super.initState();
    todoList.addAll(['Купить хлеб', 'Купить молоко', 'Купить гречку']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Список дел'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                child: ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete_forever),
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        todoList.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  todoList.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext builder) {
                return AlertDialog(
                  title: Text('Добавить пункт'),
                  content: TextField(
                    onChanged: (String value) {
                      _userTodo = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            todoList.add(_userTodo);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('Добавить'))
                  ],
                );
              });
        },
        child: Icon(Icons.add_box, color: Colors.white),
      ),
    );
  }
}
