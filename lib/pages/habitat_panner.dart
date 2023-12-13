import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global_variables.dart';
class HabitatPlanner extends StatefulWidget {
  const HabitatPlanner({super.key});

  @override
  State<HabitatPlanner> createState() => _HabitatPlannerState();
}

class _HabitatPlannerState extends State<HabitatPlanner> {
  List<String> healthIssues=["Diabetes"];
  final healthController=TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        elevation: 15,
        shadowColor: Colors.black,
        backgroundColor:GlobalVariables.secondaryColor,
        centerTitle: false,
        title:   Text(
          "Habitat planner",
          style: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,size: 27,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined,color: Colors.white,)),
        ],
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.aBeeZee(),
                  prefixIconColor: Colors.black45,
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Enter your name',
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.sizeOf(context).width*.6,
                      maxWidth: MediaQuery.sizeOf(context).width*.8
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.aBeeZee(),
                  prefixIconColor: Colors.black45,
                  prefixIcon: const Icon(Icons.person,color: Colors.white,),
                  hintText: 'Male/Female',
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.sizeOf(context).width*.6,
                      maxWidth: MediaQuery.sizeOf(context).width*.8
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIconColor: Colors.black45,
                  prefixIcon: const Icon(Icons.calendar_month),
                  hintText: 'Enter your age in years',
                  hintStyle: GoogleFonts.aBeeZee(),
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.sizeOf(context).width*.6,
                      maxWidth: MediaQuery.sizeOf(context).width*.8
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIconColor: Colors.black45,
                  prefixIcon: const Icon(Icons.flag),
                  hintText: 'Enter your country',
                  hintStyle: GoogleFonts.aBeeZee(),
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.sizeOf(context).width*.6,
                      maxWidth: MediaQuery.sizeOf(context).width*.8
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: healthController,
                onSubmitted: (value) {
                  if(healthController.text.trim().toString().isNotEmpty){
                    healthIssues.add(healthController.text.trim().toString());
                    setState(() {});
                    healthController.clear();
                    FocusScope.of(context).requestFocus(focusNode);
                  }
                },
                onTap: () {
                  focusNode.requestFocus();
                },
                onTapOutside: (event) {
                  if(healthController.text.trim().toString().isNotEmpty){
                    healthIssues.add(healthController.text.trim().toString());
                    setState(() {});
                    healthController.clear();
                    focusNode.unfocus();
                  }
                },
                focusNode:FocusNode(),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIconColor: Colors.black45,
                  suffixIcon: const Icon(Icons.local_hospital),
                  hintText: 'List Out your health issues',
                  hintStyle: GoogleFonts.aBeeZee(),
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.sizeOf(context).width*.6,
                      maxWidth: MediaQuery.sizeOf(context).width*.8
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  minHeight: 5,maxHeight: 200,
                    maxWidth: MediaQuery.sizeOf(context).width*0.8,
                    minWidth: MediaQuery.sizeOf(context).width*0.6
                ),
                child: Wrap(
                  spacing: 19.0, // Adjust spacing between items
                  runSpacing: 12.0, // Adjust spacing between lines
                  children: healthIssues.map((String healthIssue) {
                    return Text(
                      healthIssue,
                      style:  GoogleFonts.manrope(color: Colors.black,fontSize: 16),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height:25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 18,
                      padding: const EdgeInsets.only(left: 5),
                      fixedSize: const Size(180, 45),
                      backgroundColor: Theme.of(context).canvasColor
                  ),
                  child:Text("Generate Plan ",style: GoogleFonts.aBeeZee(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                  onPressed: (){}
              )

            ],
          ),
        ),
      ),
    );
  }

}
