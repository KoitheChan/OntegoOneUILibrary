import 'package:flutter/material.dart';

class ColorsPalette extends StatelessWidget {
  const ColorsPalette({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //body: Container(
      child: SingleChildScrollView(
        child: Container(
          height: 2300,
          width: 800,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF009BCF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Main Color",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F3F3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Grey Text Field",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //First Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF31AFD8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Featured Box",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1675D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Option Red",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //2nd Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF31AF80),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Option Green",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF969696),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Grey Container",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //3rd Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F6F6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Disabled Button",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFABADB1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Disabled Dark Button",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //4th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF009BD1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Blue Text",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF96999E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Grey Text",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //5th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Standard Text",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF838383),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Dark Grey Text",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //6th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "White",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 246, 245),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Grey Row",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //7th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 202, 203, 205),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Grey Bottom Divider",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 226, 226),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Grey Top Divider",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //8th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF019C63),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Green Tick Box",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF41C300),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Green Traffic Light",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //9th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFF44236),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Red Traffic Light",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6891F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Orange",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //10th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFD234),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Yellow",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFABADB1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Disabled Dark Button",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //11th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF1B6948),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Dark Green",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF0B452C),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Darker Green",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //12th Row
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF5A8E12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Default Highlight",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFC1E09E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Lighter Green",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //13th Row
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(
                        //width: 490,
                      //),
                      Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF6F35A5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "K Primary Color",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                       Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "K Primary Light Color",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //SizedBox(
                        //width: 490,
                      //),
                    ],
                  ), //14th Row
                ],
              ),
            ),
          ),
        ),
      ),
    //)
    );
  }
}
