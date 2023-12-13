import 'package:flutter/material.dart';
import 'package:martian/resources.dart';

class ResourceTrackingScreen extends StatelessWidget {
  ResourceTrackingScreen({super.key});
  final List<Resource> Resources = resources;
  final List<List<ResourceLog>> ResourceLogs = resourceLogs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Resources'),
        ),
        body: ListView.builder(
          itemCount: Resources.length,
          itemBuilder: (ctx, index) {
            return SizedBox(
              height: 120,
              child: Card(
                child: GestureDetector(
                  onTap: () => _showLogsDialog(
                      context, resources[index].name, ResourceLogs[index]),
                  child: Center(
                    child: ListTile(
                      title: Text(Resources[index].name),
                      subtitle: Resources[index].name == 'Oxygen Level' ||
                              Resources[index].name == 'Water Reserve'
                          ? Text(
                              '${Resources[index].quantity.toStringAsFixed(2)}% Left')
                          : Text(
                              '${Resources[index].quantity.toString()}pkts Left'),
                      trailing:
                          _buildCircularProgress(resources[index].quantity),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}

void _showLogsDialog(
    BuildContext context, String resourceName, List<ResourceLog> logs) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$resourceName Logs'),
        content: ListView(
          children: logs.map((log) {
            return ListTile(
              title: Text(log.timestamp),
              subtitle: resourceName == 'Oxygen Level' ||
                      resourceName == 'Water Reserve'
                  ? Text('${log.value.toStringAsFixed(2)} %')
                  : Text('${log.value.toString()} Pkts'),
            );
          }).toList(),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}

Widget _buildCircularProgress(int quantity) {
  return Stack(
    alignment: Alignment.center,
    children: [
      const Icon(
        Icons.battery_std,
        size: 30.0,
      ),
      SizedBox(
        height: 30.0,
        width: 30.0,
        child: CircularProgressIndicator(
          value: quantity / 100,
          strokeWidth: 3.0,
          backgroundColor: Colors.grey,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ),
    ],
  );
}
