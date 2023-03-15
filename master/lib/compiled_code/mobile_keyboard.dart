import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//add imoport to cupertino buttons
//use reference from keyboard_module.dart

class MobileKeyboard extends StatelessWidget {
  const MobileKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
      
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "a",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "b",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "c",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "d",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "e",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //first Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "f",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "g",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "h",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "j",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //2nd Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "k",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "l",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "m",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "n",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "o",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //3rd Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "123",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Icon(
                          CupertinoIcons.chevron_forward, 
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Image(
                          image: AssetImage("lib/assets/imgs/Aa.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Image(
                          image: AssetImage("lib/assets/imgs/Spacebar.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Icon(
                          Icons.backspace
                        ),
                      ),
                    ),
                  ],
                ),
              ), //4th Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 204,
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 204,
                      color: Color(0xFF2FA8D0),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
