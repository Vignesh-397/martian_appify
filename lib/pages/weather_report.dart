import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:martian/global_variables.dart';

class WeatherReportPage extends StatefulWidget {
  @override
  State<WeatherReportPage> createState() => _WeatherReportPageState();
}

class _WeatherReportPageState extends State<WeatherReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFE4B5), // Peach
            Color(0xFFFFD700), // Gold
            Color(0xFFFF6347), // Tomato
            Color(0xFF8B4513), // SaddleBrown
          ],
          stops: [
            0.0,
            0.25,
            0.5,
            0.75,
          ], // Adjust color stops for a smooth transition
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(
                    0.5), // Adjust the opacity by changing the alpha value
                BlendMode.dstATop,
              ),
              child: Image.asset(
                "lib/cloud.jpg",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
          ),
          Positioned(
            top: 15,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  Text(
                    "Good morning Martian",
                    style: GoogleFonts.aBeeZee(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    '45° C',
                    style: GoogleFonts.manrope(
                        fontSize: 55, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54,
                          fixedSize:
                              Size(MediaQuery.sizeOf(context).width * 0.8, 40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.water_drop,
                                color: Colors.black,
                              ),
                              Text(
                                " 34%",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.water,
                                color: Colors.black,
                              ),
                              Text(
                                " 15km/h",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "AQ  ",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "34%",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 55,
                  ),
                  Text(
                    "Best Activities",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white54),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.sports_gymnastics,
                              color: Colors.black,
                            ),
                            Text(
                              " Workout",
                              style: GoogleFonts.aBeeZee(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white54),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.home,
                              color: Colors.black,
                            ),
                            Text(
                              " Lab Works",
                              style: GoogleFonts.aBeeZee(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    "7 days forecast",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.75,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.sunny,
                                  color: Colors.black,
                                ),
                                Text(
                                  " Lab Works",
                                  style: GoogleFonts.manrope(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Text(
                              "35° ",
                              style: GoogleFonts.manrope(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.sunny_snowing,
                                  color: Colors.black,
                                ),
                                Text(
                                  " Lab Works",
                                  style: GoogleFonts.manrope(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Text(
                              "35° ",
                              style: GoogleFonts.manrope(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  CupertinoIcons.cloud_bolt_rain,
                                  color: Colors.black,
                                ),
                                Text(
                                  " Lab Works",
                                  style: GoogleFonts.manrope(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Text(
                              "35° ",
                              style: GoogleFonts.manrope(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  CupertinoIcons.sun_dust,
                                  color: Colors.black,
                                ),
                                Text(
                                  " Lab Works",
                                  style: GoogleFonts.manrope(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Text(
                              "35° ",
                              style: GoogleFonts.manrope(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white30,
                          fixedSize:
                              Size(MediaQuery.sizeOf(context).width * 0.7, 35)),
                      child: Text(
                        "See all Days",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.5),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
