import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
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
                        Column(
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
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: height * 0.21,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xFF35383F),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '25%',
                            style: GoogleFonts.poppins(
                              textStyle : TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600
                              ),),
                          ),
                          Text(
                            "Today's Special!",
                            style:  GoogleFonts.poppins(
                              textStyle : TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                          ),
                          SizedBox.square(dimension: 10,),
                          Text(
                            "Get discount for every\norder.only valid for today",
                            style: GoogleFonts.poppins(
                              textStyle : TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height*0.2,
                      width: width*0.3,
                      // color: Colors.blue,
                      child: Image.network('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713')
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              // color: Colors.blue,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        )
                      ),)
                    ],
                  ),
                  SizedBox.square(dimension: 30),
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          )
                      ),)
                    ],
                  ),
                  SizedBox.square(dimension: 30),
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          )
                      ),)
                    ],
                  ),
                  SizedBox.square(dimension: 30),
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          )
                      ),)
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.blue,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          )
                      ),)
                    ],
                  ),
                  SizedBox.square(dimension: 30),
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          )
                      ),)
                    ],
                  ),
                  SizedBox.square(dimension: 30),
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          )
                      ),)
                    ],
                  ),
                  SizedBox.square(dimension: 30),
                  Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
                          radius: 35,

                        ),
                      ),
                      SizedBox.square(dimension: 12),
                      Text('Sofa',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          )
                      ),)
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              padding: EdgeInsets.symmetric(horizontal: 28),
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Most Popular',style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )
                  ),),
                  Text('See All',style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        fontWeight: FontWeight.w500,
                      )
                  ),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
