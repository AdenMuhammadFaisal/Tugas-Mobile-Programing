import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  Widget CategorySlide() {
    Widget category(String img, String text) {
      return Stack(children: [
        Container(
          child: Container(
            margin: const EdgeInsets.only(right: 13),
            height: 100,
            width: 135,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.mate(
                            color: Colors.black, fontSize: 18),
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        size: 22,
                        color: Colors.black,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Category',
              style: GoogleFonts.mate(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                category('asset/plant_white_bg.png', 'Plant'),
                category('asset/lamp_white_bg.png', 'Lamp'),
                category('asset/chair_white_bg.png', 'Chair'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Widget gridVieww() {
  //   Widget gridItem(String img, String text, String harga) {
  //     return GridView.builder(
  //       physics: const NeverScrollableScrollPhysics(),
  //       shrinkWrap: true,
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
  //       itemCount: 6,
  //       itemBuilder: (context, index) {
  //         Container(
  //           margin: const EdgeInsets.only(right: 18),
  //           child: Stack(
  //             children: [
  //               Container(
  //                 width: 130,
  //                 height: 150,
  //                 decoration: BoxDecoration(
  //                     image: DecorationImage(
  //                         fit: BoxFit.cover, image: AssetImage(img))),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 100),
  //                 child: Container(
  //                   alignment: Alignment.bottomCenter,
  //                   height: 55,
  //                   width: 130,
  //                   decoration:
  //                       BoxDecoration(color: Colors.black54.withOpacity(0.4)),
  //                   child: Padding(
  //                     padding: const EdgeInsets.all(3.0),
  //                     child: Column(
  //                       children: [
  //                         Row(
  //                           mainAxisAlignment: MainAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               text,
  //                               style: GoogleFonts.poppins(
  //                                   fontSize: 16,
  //                                   color: const Color(0xffFFFFFF)),
  //                             ),
  //                           ],
  //                         ),
  //                         Text(
  //                           harga,
  //                           style: GoogleFonts.poppins(
  //                               fontSize: 16, color: const Color(0xffFFFFFF)),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     );
  //   }

  //   return Container();
  // }

// widget Hot Item
  Widget hotItem() {
    Widget list(String img, String text, String harga) {
      return Container(
        margin: const EdgeInsets.only(bottom: 20, left: 22),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 145,
              height: 185,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset: const Offset(0, 2))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.bottomCenter,
                height: 55,
                width: 145,
                decoration: BoxDecoration(
                    color: Colors.black54.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            text,
                            style: GoogleFonts.mate(
                                fontSize: 16,
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.5)),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          harga,
                          style: GoogleFonts.mate(
                              fontSize: 16,
                              color: const Color(0xffFFFFFF).withOpacity(0.5)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
          width: 5,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Hot Item',
              style: GoogleFonts.mate(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  list('asset/favorite_img_4.jpg', 'Cactus', '\$47'),
                  list('asset/favorite_img_1.jpg', 'Elegant Lamp', '\$35'),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  list('asset/favorite_img_2.jpg', 'Traditional Chair', '\$55'),
                  list('asset/favorite_img_3.jpeg', 'Wooden Chair', '\$100'),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              list('asset/favorite_img_5.jpg', 'Beach Beautiful', '\$50'),
              list('asset/favorite_img_6.jpg', 'Architectural', '\$40'),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 241, 240, 240),
      //appbar
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5),
            ],
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 16, 204, 211),
              Color.fromARGB(255, 241, 241, 237),
            ]),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 28,
                      ),
                      Text(
                        'Discover',
                        style: GoogleFonts.mate(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 28,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color.fromARGB(255, 255, 254, 254),
                              size: 30,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'What are you looking for?',
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.white60),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(140),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 241, 182, 172),
                    Color.fromARGB(255, 228, 43, 30)
                  ])),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: CategorySlide()),
            const SizedBox(
              height: 10,
            ),
            hotItem(),

            // gridVieww()
          ],
        ),
      )),
      //bottom NavBar
      bottomNavigationBar: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color:
                        const Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: 0,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Color.fromARGB(96, 131, 24, 24),
              iconSize: 35,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
