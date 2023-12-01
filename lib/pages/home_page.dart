import 'package:bmi_app/const/colors.dart';
import 'package:bmi_app/pages/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _valueHeight = 180;
  int _valueWeight = 70;
  int _valueAge = 18;
  bool _maleActive = true;
  bool _femaleActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "BMI",
              style: GoogleFonts.bebasNeue(fontSize: 40, color: Colors.white),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            _maleActive ? CustomColor.active : CustomColor.tile,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 140,
                            color: Colors.blue[300],
                          ),
                          Text(
                            'Male',
                            style: GoogleFonts.bebasNeue(
                                fontSize: 26, color: Colors.grey[300]),
                          )
                        ],
                      ),
                    ),
                    onTap: () => setState(() {
                      _maleActive = !_maleActive;
                      _femaleActive = !_femaleActive;
                      print(_maleActive);
                    }),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      width: 5,
                    )),
                Expanded(
                  flex: 10,
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: _femaleActive
                            ? CustomColor.active
                            : CustomColor.tile,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 140,
                            color: Colors.orange[900],
                          ),
                          Text(
                            'Female',
                            style: GoogleFonts.bebasNeue(
                                fontSize: 26, color: Colors.grey[300]),
                          )
                        ],
                      ),
                    ),
                    onTap: () => setState(() {
                      _femaleActive = !_femaleActive;
                      _maleActive = !_maleActive;
                    }),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: CustomColor.tile,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Height",
                      style: GoogleFonts.bebasNeue(
                          fontSize: 25, color: Colors.grey[300]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _valueHeight.round().toString(),
                    style: GoogleFonts.bebasNeue(
                        fontSize: 70, color: Colors.white),
                  ),
                  Slider(
                    activeColor: Colors.orange[300],
                    min: 100,
                    max: 200,
                    value: _valueHeight,
                    divisions: 1000,
                    onChanged: (value) {
                      setState(() {
                        _valueHeight = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: CustomColor.tile,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: GoogleFonts.bebasNeue(
                              fontSize: 25, color: Colors.grey[300]),
                        ),
                        Text(
                          _valueWeight.toString(),
                          style: GoogleFonts.bebasNeue(
                              fontSize: 70, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange[300],
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 30,
                                  ),
                                ),
                              ),
                              onTap: () => setState(() {
                                _valueWeight--;
                              }),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange[300],
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 30,
                                  ),
                                ),
                              ),
                              onTap: () => setState(() {
                                _valueWeight++;
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      width: 5,
                    )),
                Expanded(
                  flex: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: CustomColor.tile,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: GoogleFonts.bebasNeue(
                              fontSize: 25, color: Colors.grey[300]),
                        ),
                        Text(
                          _valueAge.toString(),
                          style: GoogleFonts.bebasNeue(
                              fontSize: 70, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange[300],
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 30,
                                  ),
                                ),
                              ),
                              onTap: () => setState(() {
                                _valueAge--;
                              }),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange[300],
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 30,
                                  ),
                                ),
                              ),
                              onTap: () => setState(() {
                                _valueAge++;
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.orange[300],
              ),
              child: Center(
                child: Text(
                  "CALCULATE BMI",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                        male: _maleActive,
                        female: _femaleActive,
                        height: _valueHeight.round(),
                        weight: _valueWeight,
                        age: _valueAge),
                  ))
            },
          ),
        ],
      ),
    );
  }
}
