import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:martian/global_variables.dart';
import 'package:martian/pages/Communication_hub.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    const text = Text(
      "Search for people",
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(86),
        child: Container(
            padding: const EdgeInsets.only(top: 50, bottom: 12),
            color: GlobalVariables.secondaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  width: 360,
                  child: TextFormField(
                    onTap: () {
                      setState(() {
                        clicked = true;
                      });
                    },
                    onTapOutside: (event) {
                      clicked = false;
                      FocusScope.of(context).unfocus();
                      Future.delayed(const Duration(milliseconds: 700), () {
                        setState(() {});
                      });
                    },
                    onFieldSubmitted: (value) {},
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: SizedBox(
                          width: 100,
                          child: InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.keyboard_voice,
                                color: Colors.grey,
                                size: 23,
                              )),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 26,
                        ),
                        hintText: "Search here for  people",
                        hintStyle: GoogleFonts.aBeeZee(
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                            fontSize: 16)),
                  ),
                ),
              ],
            )),
      ),
      body: clicked
          ? const Center(child: text)
          : SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      height: 100,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(),
                              elevation: 18,
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadowColor: Colors.white,
                              side: const BorderSide(
                                  width: 1, style: BorderStyle.solid)),
                          onPressed: () {},
                          icon: const Icon(Icons.people),
                          label: const Text(
                            "People who are in both contact book and  mars",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      height: 100,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(),
                              elevation: 18,
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadowColor: Colors.white,
                              side: const BorderSide(
                                  width: 1, style: BorderStyle.solid)),
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          label: Text(
                            "Find the people who stays near to your house",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      height: 100,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(),
                              elevation: 18,
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadowColor: Colors.white,
                              side: const BorderSide(
                                  width: 1, style: BorderStyle.solid)),
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_people),
                          label: Text(
                            "Connect with people who has same taste",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      height: 100,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(),
                              elevation: 18,
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadowColor: Colors.white,
                              side: const BorderSide(
                                  width: 1, style: BorderStyle.solid)),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => NearbyPeopleScreen(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.search),
                          label: Text(
                            "Connect with random people                    ",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
