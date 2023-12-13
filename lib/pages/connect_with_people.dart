import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:martian/global_variables.dart';
class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(86),
        child: Container(
            padding: const EdgeInsets.only(top: 50,bottom: 12),
            color: GlobalVariables.secondaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  width:360,
                  child: TextFormField(
                    onFieldSubmitted: (value) {},
                    textAlign: TextAlign.start,
                    decoration:   InputDecoration(
                        border: InputBorder.none,
                        suffixIcon:SizedBox(
                          width: 100,
                          child: InkWell(
                              onTap: () {
                              },
                              child: const Icon(Icons.keyboard_voice,color: Colors.grey,size: 23,)),
                        ),
                        prefixIcon:const Icon(Icons.search,color: Colors.grey,size: 26,),
                        hintText: "Search here for  people",
                        hintStyle: GoogleFonts.aBeeZee(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 15)
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
          margin: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
          height: 100,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(),
                elevation: 18,
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                shadowColor: Colors.white,
                side:  const BorderSide(width: 1,style: BorderStyle.solid)
            ),

            onPressed: (){},
            icon: const Icon(Icons.border_bottom_sharp),
            label:  Text("People who are in both contact book and  mars",style: GoogleFonts.aBeeZee(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 2,)
          ),
        ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
              height: 100,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(),
                      elevation: 18,
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                      shadowColor: Colors.white,
                      side:  const BorderSide(width: 1,style: BorderStyle.solid)
                  ),

                  onPressed: (){},
                  icon: const Icon(Icons.border_bottom_sharp),
                  label:  Text("Find the people who stays near to your house",style: GoogleFonts.aBeeZee(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 2,)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
              height: 100,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(),
                      elevation: 18,
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                      shadowColor: Colors.white,
                      side:  const BorderSide(width: 1,style: BorderStyle.solid)
                  ),

                  onPressed: (){},
                  icon: const Icon(Icons.border_bottom_sharp),
                  label:  Text("Connect with people who has same taste",style: GoogleFonts.aBeeZee(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 2,)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
              height: 100,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(),
                      elevation: 18,
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                      shadowColor: Colors.white,
                      side:  const BorderSide(width: 1,style: BorderStyle.solid)
                  ),

                  onPressed: (){},
                  icon: const Icon(Icons.border_bottom_sharp),
                  label:  Text("Connect with random people                    ",style: GoogleFonts.aBeeZee(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 2,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
