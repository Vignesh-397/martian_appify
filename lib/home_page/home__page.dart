import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:martian/global_variables.dart';
import 'package:martian/pages/connect_with_people.dart';
import 'package:martian/pages/daily_agenda.dart';
import 'package:martian/pages/emrgency_unit.dart';
import 'package:martian/pages/habitat_panner.dart';
import 'package:martian/pages/resource_tracker.dart';
import 'package:martian/pages/weather_report.dart';

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
                  "Hey..",
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
                        "Martian",
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
            gradientCardSample(),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EmergencyContact(),
                  )),
                  child: Card(
                    elevation: 20,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 44, 102, 150),
                                Color.fromARGB(255, 62, 125, 234),
                                Color.fromARGB(255, 40, 37, 227)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "emergency",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Helpline",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ResourceTrackingScreen(),
                  )),
                  child: Card(
                    elevation: 20,
                    shadowColor: Colors.yellow.shade100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 215, 202, 89),
                                Color.fromARGB(255, 197, 143, 61),
                                Color.fromARGB(255, 234, 148, 36)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "your",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Resource Tracker",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HabitatPlanner(),
              )),
              child: Card(
                elevation: 20,
                shadowColor: const Color.fromARGB(255, 216, 135, 234),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                    height: 120,
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 216, 135, 234),
                            Color.fromARGB(255, 141, 22, 171),
                            Color.fromARGB(255, 102, 44, 150)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DailyAgenda(),
                  )),
                  child: Card(
                    elevation: 20,
                    shadowColor: const Color.fromARGB(255, 50, 12, 176),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 93, 65, 207),
                                Color.fromARGB(255, 50, 12, 176),
                                Color.fromARGB(255, 22, 12, 117)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "find",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Daily Tasks",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Connect(),
                  )),
                  child: Card(
                    elevation: 20,
                    shadowColor: const Color.fromARGB(255, 241, 79, 79),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 253, 81, 81),
                                Color.fromARGB(255, 200, 59, 59),
                                Color.fromARGB(255, 234, 34, 100)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "connect",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "With People",
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => WeatherReportPage(),
              )),
              child: Container(
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 29, 1, 87),
                        Color.fromARGB(134, 11, 2, 62),
                        Color.fromARGB(255, 6, 1, 37),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16)),
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: ShaderMask(
                    shaderCallback: (bounds) {
                      return GlobalVariables.getLineGradient()
                          .createShader(bounds);
                    },
                    child: Text(
                      "Live Weather Report",
                      style: GoogleFonts.manrope(
                          color: Colors.white,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w500),
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

  Widget gradientCardSample() {
    return Container(
      height: 160,
      width: MediaQuery.sizeOf(context).width * 0.75,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF846AFF),
              Color(0xFF755EE8),
              Colors.purpleAccent,
              Colors.amber,
            ],
          ),
          borderRadius: BorderRadius.circular(
              16)), // Adds a gradient background and rounded corners to the container
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    'Digital Id',
                    style: GoogleFonts.aBeeZee(fontSize: 17),
                  ), // Adds a title to the card
                  const Spacer(),
                  Stack(
                    children: List.generate(
                      2,
                      (index) => Container(
                        margin: EdgeInsets.only(left: (15 * index).toDouble()),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white54),
                      ),
                    ),
                  ) // Adds a stack of two circular containers to the right of the title
                ],
              ),
              Text(
                'ID : 4111 7679 8689 9700',
                style: GoogleFonts.aBeeZee(fontSize: 16),
              ) // Adds a subtitle to the card
            ],
          ),
          Text('Plan : \$3,000',
              style: GoogleFonts.aBeeZee(
                  fontSize: 19,
                  color:
                      Colors.white)) // Adds a price to the bottom of the card
        ],
      ),
    );
  }
}
