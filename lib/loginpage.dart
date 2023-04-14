import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutte_apk_uts/loginpage.dart';

import 'mainPage.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 213, 252),
      body: Stack(
        children: [
          //bacground atas (dengan gambar)
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 440,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Asset/Background.jpg'),
                    ),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 120, left: 10, right: 10),
                color: Color.fromARGB(255, 16, 204, 211).withOpacity(.80),
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Pick Your ",
                            style: GoogleFonts.mate(
                                fontSize: 22, color: Colors.white))),
                    const SizedBox(
                      width: 35,
                    ),
                    Text(
                      'Furniture',
                      style: GoogleFonts.mate(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 5,
                      width: 70,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 247, 248, 250)),
                    ),
                  ],
                ),
              ),
            ),
          ),
//container Text Field
          Positioned(
            top: 250,
            child: Container(
              height: 260,
              width: MediaQuery.of(context).size.width - 20,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 53, 51, 49)
                            .withOpacity(0.4),
                        spreadRadius: 7,
                        blurRadius: 15),
                  ]),
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Text(
                        'Login First',
                        style: GoogleFonts.mate(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 16, 204, 211),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25, right: 8, left: 8),
                    child: Column(
                      children: [
                        loginTextfield(
                            Icons.person_2_rounded, 'User Name', false),
                        loginTextfield(
                            Icons.lock_open_rounded, 'Password', true),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Icon(
                                      Icons.square_outlined,
                                      color: Color.fromARGB(255, 146, 143, 143),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Remember me',
                                  style: GoogleFonts.mate(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 139, 136, 136),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
//login button
          Positioned(
              top: 580,
              right: 0,
              left: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const mainPage()));
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 4,
                              blurRadius: 6,
                              offset: const Offset(0, 2))
                        ]),
                    child: Center(
                      child: Text(
                        'Login',
                        style: GoogleFonts.mate(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 16, 204, 211),
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

//Text field
  Widget loginTextfield(IconData icon, String hintText, bool password) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: password,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: CupertinoColors.systemGrey,
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }
}
