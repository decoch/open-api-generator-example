import 'package:flutter/material.dart';
import 'package:todo_api/todo_api.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open api generator demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Todo List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Todo> _todoList = <Todo>[];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final todos = await fetchTodos();
      await fetchDynamicKey();
      setState(() {
        _todoList = todos;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) {
          final item = _todoList[index];
          return ListTile(
            title: Text(item.name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _displayDialog(context),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _displayDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add a task to your list'),
          content: TextField(
            controller: _textEditingController,
            decoration: const InputDecoration(hintText: 'Enter task here'),
          ),
          actions: [
            TextButton(
              child: const Text('ADD'),
              onPressed: () {
                Navigator.of(context).pop();
                _addTodoItem(_textEditingController.text);
              },
            ),
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  Future<void> _addTodoItem(String title) async {
    final todo = Todo(
      (b) => b
        ..id = Random().nextInt(1000000000) // FIXME: use UUID v4
        ..name = title,
    );
    await saveTodos(todo);
    setState(() {
      _todoList.add(todo);
    });
    _textEditingController.clear();
  }
}

Future<Todo?> saveTodos(Todo todo) async {
  final response = await TodoApi().getDefaultApi().addTodo(todo: todo);
  return response.data;
}

Future<List<Todo>> fetchTodos() async {
  final response = await TodoApi().getDefaultApi().findTodos();
  return response.data?.toList() ?? [];
}

Future<void> fetchDynamicKey() async {
  final response = await TodoApi().getDefaultApi().dynamicKey();
  print(response);
}
