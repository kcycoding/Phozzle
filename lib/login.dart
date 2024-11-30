import 'package:flutter/material.dart';
import 'map.dart';

class Mytextstyle extends TextStyle {
  Mytextstyle(
      {Color color = Colors.black,
      double fontSize = 45,
      String fontFamily = 'NanumBarunpen',
      FontWeight fontWeight = FontWeight.w700,
      double height = 0})
      : super(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.none) {}
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 28,
                top: 500,
                child: Container(
                  width: 270,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Color(0xFF007BFF),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 1,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 28,
                top: 416,
                child: const Text(
                  '찰나의 순간을 모아\n나만의 퍼즐을 완성해 보세요',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontFamily: 'NanumBarunpen',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 564,
                child: Container(
                  width: 343,
                  height: 45,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 343,
                          height: 45,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.80, color: Color(0xFF007BFF)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 11,
                        child: Container(
                          width: 23,
                          height: 23,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/23x23"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        // left: 126,
                        // top: 11,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Mapview(title: "map")));
                        },
                        child: Text(
                          'Google Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'NanumBarunpen',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 264,
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Pho',
                        style: TextStyle(
                          color: Color(0xFF007BFF),
                          fontSize: 45,
                          fontFamily: 'NanumBarunpen',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'to\nPu',
                        style: Mytextstyle(
                          color: Colors.black.withOpacity(0.4000000059604645),
                          fontSize: 45,
                          fontFamily: 'NanumBarunpen',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      const TextSpan(
                        text: 'zzle',
                        style: TextStyle(
                          color: Color(0xFF007BFF),
                          fontSize: 45,
                          fontFamily: 'NanumBarunpen',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
