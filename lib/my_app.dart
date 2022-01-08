import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.amber,
                        Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height * 0.9),
                    );
                  },
                  blendMode: BlendMode.dstIn,
                  child: const Image(
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/witcher.png"),
                  ),
                ),
                const Center(
                  child: Text(
                    "The Witcher 2021",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ),
                const Center(
                  child: Text(
                    "Sci-Fiction",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffAFAFAF)),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: 94,
                  height: 14,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Image(
                          image: AssetImage(
                            "assets/full_star.png",
                          ),
                          height: 14,
                          width: 14,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/full_star.png",
                          ),
                          height: 14,
                          width: 14,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/full_star.png",
                          ),
                          height: 14,
                          width: 14,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/full_star.png",
                          ),
                          height: 14,
                          width: 14,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/half_star.png",
                          ),
                          height: 14,
                          width: 14,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 115,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            child: const Center(
                              child: Image(
                                image: AssetImage("assets/play.png"),
                                width: 22,
                                height: 22,
                              ),
                            ),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFB800),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            child: const Center(
                              child: Image(
                                image: AssetImage("assets/heart.png"),
                                width: 22,
                                height: 22,
                              ),
                            ),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffAFAFAF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Cast",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/people1.png",
                                    ),
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Henry Cavill",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Geralt",
                                      style: TextStyle(
                                          color: Color(0xffAFAFAF),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          width: 186,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 2.5,
                              color: Color(0xffF1F1F1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/people2.png",
                                    ),
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Freeya Alan",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Ciri",
                                      style: TextStyle(
                                          color: Color(0xffAFAFAF),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          width: 186,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 2.5,
                              color: Color(0xffF1F1F1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 30,
                height: 30,
                child: IconButton(
                  iconSize: 15,
                  onPressed: () {},
                  icon: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
