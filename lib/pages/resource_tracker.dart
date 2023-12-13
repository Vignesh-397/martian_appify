import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:martian/global_variables.dart';
import 'package:martian/resources.dart';

class ResourceTrackingScreen extends StatelessWidget {
  ResourceTrackingScreen({super.key});
  final List<Resource> Resources = resources;
  final List<List<ResourceLog>> ResourceLogs = resourceLogs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalVariables.appBarColor,
          title:  Text('Resources',style: GoogleFonts.aBeeZee(color: Colors.white),),
        ),
        body: ListView.builder(
          itemCount: Resources.length,
          itemBuilder: (ctx, index) {
            return SizedBox(
              height: 120,
              child: GestureDetector(
                onTap: () => _showLogsDialog(
                    context, resources[index].name, ResourceLogs[index]),
                child: Card(
                  child: Center(
                    child: ListTile(
                      title: Text(Resources[index].name,style: GoogleFonts.aBeeZee(),),
                      subtitle: Resources[index].name == 'Oxygen Level' ||
                          Resources[index].name == 'Water Reserve'
                          ? Text(
                          '${Resources[index].quantity.toStringAsFixed(2)}% Left',style: GoogleFonts.aBeeZee(),)
                          : Text(
                          '${Resources[index].quantity.toString()}pkts Left',style: GoogleFonts.aBeeZee(),),
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
    useSafeArea: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$resourceName Logs'),
        content: Container(
          height: MediaQuery.of(context).size.height * 0.6, // Adjust the height
          width: MediaQuery.of(context).size.width * 0.8,
          child: ListView(
            children: logs.map((log) {
              return ListTile(
                title: Text(log.timestamp),
                subtitle: resourceName == 'Oxygen Level' ||
                    resourceName == 'Water Reserve'
                    ? Text('${log.value.toStringAsFixed(2)} %',style: GoogleFonts.aBeeZee(),)
                    : Text('${log.value.toString()} Pkts',style: GoogleFonts.aBeeZee(),),
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child:  Text('Close',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold,color: Colors.black54),),
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
