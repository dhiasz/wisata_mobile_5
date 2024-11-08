import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreen/mystatelesswidget.dart';
import 'package:wisata_mobile_5/models/landing_model.dart';
import 'package:wisata_mobile_5/utils/const.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {



int CurrentIndex = 0;

Widget dotIndication(int index){
  return AnimatedContainer(
    duration: Duration(microseconds: 480),
    margin: EdgeInsets.only(right: 6),
    width: 20,
    height: 4,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color : index == CurrentIndex ? Colors.white : Colors.white54
  ),
  );
}


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: landingpage.length,
            onPageChanged: (value) {
              setState(() {
                CurrentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              return Image.network(
                landingpage[index].image,
                fit: BoxFit.cover,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 150),
                Column(
                  children: [
                    Text(
                      landingpage[CurrentIndex].name,
                      style: const TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "NunitoSans",
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Ayo jelajahi Indonesia bersama kami dan ciptakan kenangan tak terlupakan yang akan bertahan seumur hidup.",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "NunitoSans"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(
                              landingpage.length,
                              dotIndication,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 185,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(35),
                      color: Colors.white,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mystatelesswidget(),
                                ),
                              );
                            },
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 5),
                                      spreadRadius: 15,
                                      blurRadius: 15,
                                    )
                                  ],
                                  color: kButtonColor),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Mari Kita Mulai",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "sudah punya akun? ",
                                  style: TextStyle(
                                    color: kButtonColor,
                                    fontSize: 14,
                                  ),
                                ),
                                TextSpan(
                                  text: "Masuk",
                                  style: TextStyle(
                                    color: blueTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }



  
}