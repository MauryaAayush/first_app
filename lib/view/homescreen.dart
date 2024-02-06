import 'package:first_app/utils/Categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;



    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                    height: height * 0.08,
                    width: width * 0.918,
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 1),
                          height: height * 0.05,
                          width: width * 0.11,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),

                        // here we have written the text of 👋 and AM
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '  Good Morning 👋',
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                            Text(
                              'Aayush Maurya',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )
                          ],
                        ),

                        SizedBox(
                          width: 110,
                        ),

                        Icon(
                          Icons.notifications_none_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(
                          Icons.favorite_border_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 11),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Color(0xFF1F222A),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.5,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special Offers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            Container(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: height * 0.21,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xFF35383F),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '25%',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            "Today's Special!",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox.square(
                            dimension: 10,
                          ),
                          Text(
                              "Get discount for every \norder.onlyvalid for today",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: height * 0.2,
                      width: width * 0.3,
                      // color: Colors.blue,
                      child: Image.asset('assets/images/sofa.png'),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(icon1.length, (index) => CategoriesBox(icon1[index]['text'], icon1[index]['icons'])),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  icon2.length,
                  (index) => CategoriesBox(
                      icon2[index]['text'], icon2[index]['icons'])),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              padding: EdgeInsets.symmetric(horizontal: 28),
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ],
              ),
            ),

            Container(
              // color: Colors.blue,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                          color: Color(0xFF35383F),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: Color(0xFF35383F))),
                      child: Text(
                        'All',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: Color(0xFF181A20),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border:
                              Border.all(color: Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Sofa',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: Color(0xFF181A20),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border:
                              Border.all(color: Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Chair',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: Color(0xFF181A20),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border:
                              Border.all(color: Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Table',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.29,
                      decoration: BoxDecoration(
                          color: Color(0xFF181A20),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border:
                              Border.all(color: Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Kitchen',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: Color(0xFF181A20),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border:
                              Border.all(color: Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Lamp',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                          color: Color(0xFF181A20),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border:
                              Border.all(color: Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Cupboard',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: Color(0xFF181A20),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border:
                              Border.all(color: Color(0xFF35383F), width: 2)),
                      child: Text(
                        'vase',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                  children: [
                    Container(
                      padding : EdgeInsets.symmetric(horizontal: 20),
                      // color : Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.2,
                            width: width * 0.425,
                            decoration: BoxDecoration(
                                color: Color(0xFF35383F),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          SizedBox.square(dimension: 10),
                          Text('Shiny Wooden Chair',style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.5,
                              fontWeight: FontWeight.w600,
                            ),
                           ),
                          ),
                          SizedBox.square(dimension: 8,),
                          Row(
                            children: [
                              Icon(Icons.star_half,
                              color: Colors.white,),

                              SizedBox.square(dimension: 10,),

                              Text('4.6   |',style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                              ),
                              SizedBox.square(dimension: 10,),
                              Container(
                                alignment: Alignment.center,
                                height: height*0.025,
                                width: width*0.19,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF35383F),
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Text('6,641 sold',style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),),
                              ),
                            ],
                          ),
                          SizedBox.square(dimension: 8,),
                          Text('\$115.00',style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            )
                          )),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: height * 0.2,
                          width: width * 0.425,
                          decoration: BoxDecoration(
                              color: Color(0xFF35383F),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        Text(''),
                        Row(
                          children: [],
                        ),
                        Text(''),
                      ],
                    )
                  ],
                )
            ),



          ],
        ),
      ),
    );
  }
}

Widget CategoriesBox(String text, Icon icons) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          child: CircleAvatar(
              backgroundColor: Color(0xFF35383F),
              // backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
              radius: 32,
              child: icons
          ),
        ),
        SizedBox.square(dimension: 12),
        Text(
          text,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
        )
      ],
    ),
  );
}
