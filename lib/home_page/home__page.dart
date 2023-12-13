import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:martian/global_variables.dart';
import 'package:martian/pages/connect_with_people.dart';
import 'package:martian/pages/daily_agenda.dart';
import 'package:martian/pages/emrgency_unit.dart';
import 'package:martian/pages/habitat_panner.dart';
import 'package:martian/pages/resource_tracker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: GlobalVariables.secondaryColor,
        elevation: 15,
        shadowColor: Colors.white,
        centerTitle: false,
        title: Text(
          "Martian",
          style: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 27,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                const Text(
                  "hii..",
                  style: TextStyle(fontSize: 21, color: Colors.white38),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ShaderMask(
                      shaderCallback: (bounds) {
                        return GlobalVariables.getLineGradient()
                            .createShader(bounds);
                      },
                      child: Text(
                        "Subhash",
                        style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 35.5,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ],
            ),
            ShaderMask(
                shaderCallback: (bounds) {
                  return GlobalVariables.buttonGradient.createShader(bounds);
                },
                child: Text(
                  "Welcome to Mangal!!",
                  style: GoogleFonts.manrope(
                      color: Colors.white,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EmergencyContact(),
              )),
              child: Card(
                elevation: 45,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                    height: 120,
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.cyan,
                              Colors.blue,
                              Colors.cyan,
                              Colors.blue,
                              Colors.cyan,
                              Colors.blue,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "emergency",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Helpline",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResourceTrackingScreen(),
              )),
              child: Card(
                elevation: 45,
                shadowColor: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                    height: 130,
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Colors.yellow,
                              Colors.orange,
                              Colors.orangeAccent
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "your",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Resource Tracker",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HabitatPlanner(),
              )),
              child: Card(
                elevation: 45,
                shadowColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                    height: 120,
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                              Colors.green
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "your",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Habitat Planner",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => const DailyAgenda(),
                ));
              },
              child: Card(
                elevation: 45,
                shadowColor: Colors.cyanAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                    height: 120,
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Colors.cyan,
                              Colors.cyanAccent,
                              Colors.cyan
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "find",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Daily Tasks",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Connect(),
              )),
              child: Card(
                elevation: 45,
                shadowColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                    height: 120,
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.redAccent,
                              Colors.redAccent.shade200,
                              Colors.pinkAccent
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "connect",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "With People",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
