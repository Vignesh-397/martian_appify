import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global_variables.dart';
class EmergencyContact extends StatefulWidget {
  const EmergencyContact({super.key});

  @override
  State<EmergencyContact> createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 15,
        shadowColor: Colors.black,
        backgroundColor:GlobalVariables.secondaryColor,
        centerTitle: false,
        title:   Text(
          "Emergency Unit",
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.66, 45),
                    backgroundColor: Colors.black54
                ),
                child:Text("Protocol while Oxygen Emergency ",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.66, 45),
                    backgroundColor: Colors.red.shade900
                ),
                child:Text("Protocol while Food Emergency",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.65, 45),
                    backgroundColor: Colors.greenAccent.shade400
                ),
                child:Text("Protocol while Storm Emergency",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(height: 15,),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.6, 45),
                    backgroundColor: Colors.green.shade900
                ),
                icon: const Icon(CupertinoIcons.bell,color: Colors.white,),
                label:Text("Turn On Siren",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.6, 45),
                    backgroundColor: Colors.pink.shade900
                ),
                icon: const Icon(CupertinoIcons.bell,color: Colors.white,),
                label:Text("Alert neighbours",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.6, 45),
                    backgroundColor: Colors.redAccent
                ),
                icon: const Icon(Icons.call,color: Colors.white,),
                label:Text("Call Emergency ",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.6, 45),
                    backgroundColor: Colors.cyanAccent.shade700
                ),
                icon: const Icon(Icons.email,color: Colors.white,),
                label:Text("Contact with Email",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.6, 45),
                    backgroundColor: Colors.yellow.shade900
                ),
                icon: const Icon(Icons.call,color: Colors.white,),
                label:Text("Oxygen Emergency ",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 18,
                    padding: const EdgeInsets.only(left: 5),
                    fixedSize:  Size(MediaQuery.sizeOf(context).width*0.6, 45),
                    backgroundColor: Colors.red.shade900
                ),
                icon: const Icon(Icons.email,color: Colors.white,),
                label:Text("Food Emergency",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                onPressed: (){}
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
