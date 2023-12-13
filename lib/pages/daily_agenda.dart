import 'package:flutter/material.dart';

class Task {
  String title;
  TimeOfDay time;
  bool isDone;

  Task({required this.title, required this.time, required this.isDone});
}

class DailyAgenda extends StatefulWidget {
  const DailyAgenda({super.key});
  @override
  _DailyAgendaState createState() => _DailyAgendaState();
}

class _DailyAgendaState extends State<DailyAgenda> {
  List<Task> tasks = [];

  _removeTask(Task task) {
    setState(() {
      tasks.remove(task);
    });
  }

  _showAddTaskDialog(BuildContext context) async {
    TextEditingController titleController = TextEditingController();
    TimeOfDay selectedTime = TimeOfDay.now();

    await showTimePicker(
      context: context,
      initialTime: selectedTime,
    ).then((pickedTime) {
      if (pickedTime != null) {
        selectedTime = pickedTime;
      }
    });

    // ignore: use_build_context_synchronously
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Add Task',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: 'Task Title'),
                  ),
                  const SizedBox(height: 10),
                  Text('Selected Time: ${selectedTime.format(context)}'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (titleController.text.isNotEmpty) {
                            Task newTask = Task(
                              title: titleController.text,
                              time: selectedTime,
                              isDone: false,
                            );

                            setState(() {
                              tasks.add(newTask);
                            });

                            Navigator.of(context).pop();
                          }
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daily Agenda'),
          actions: [
            TextButton(onPressed: () {}, child: const Text('Resources')),
          ],
        ),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: ((context, index) {
            if (tasks[index] == null) {
              // Handle the case where tasks[index] is null
              return const SizedBox
                  .shrink(); // or any other widget to indicate the issue
            }
            return Dismissible(
              key: ValueKey(tasks[index]),
              background: Container(
                color: Theme.of(context).colorScheme.error.withOpacity(0.9),
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
              ),
              onDismissed: (direction) {
                _removeTask(tasks[index]);
              },
              child: Card(
                child: ListTile(
                  title: Text(tasks[index].title),
                  subtitle: Text(tasks[index].time.format(context)),
                  trailing: IconButton(
                    icon: tasks[index].isDone
                        ? const Icon(
                            Icons.done,
                            color: Colors.green,
                          )
                        : const Icon(Icons.done),
                    onPressed: () {
                      setState(() {
                        tasks[index].isDone = !tasks[index].isDone;
                      });
                    },
                  ),
                ),
              ),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showAddTaskDialog(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
