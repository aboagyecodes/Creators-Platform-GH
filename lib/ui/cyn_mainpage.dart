import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterproject_clem/ui/cyn_salespage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cyn_homepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  _navigateToSalesPage() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SalesPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          'Hello - Offers for YOU',
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0))
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade400,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Container(
                    padding: EdgeInsets.all(3.0),
                    height: 400,
                    child: CarouselSlider(
                        items: [
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_flyers.jpg'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_magazine1.jpg'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_magazine2.jpg'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_newspaper.jpg'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_logo.jpg'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_logo1.png'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_cards.jpg'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: _navigateToSalesPage,
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/carousel_cards1.jpg'))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: Colors.white70),
                                        height: 60,
                                        width: 80,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 45,
                                          color: Colors.blueAccent.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                        options: CarouselOptions(
                          height: 400,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.ease,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 1300),
                          viewportFraction: 0.82,
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 90,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Wrap(
                  children: [
                    Text(
                      'We offer a wide range of designs and publishing services, Select a product tile to get started',
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 600,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.blueAccent.shade400,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(3.0),
                child: ListView(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 6.0)),
                    Center(
                      child: Text(
                        'Have a look at the portfolios of OUR TEAM!, ',
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 6.0)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 12.0),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 6)),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.0),
                                    color: Colors.white70),
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.only(top: 3),
                                child: Image.asset(
                                  'images/profile_1.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 3.0)),
                              Center(
                                child: Container(
                                  height: 60,
                                  width: 270,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      color: Colors.transparent),
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 10.0)),
                                      Container(
                                        height: 20,
                                        width: 260,
                                        child: Text(
                                          'Name: Nyarko Agyarko Wisdom',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: 2.0,
                                          width: 260,
                                          color: Colors.black),
                                      Padding(padding: EdgeInsets.only(top: 3)),
                                      Container(
                                        height: 25,
                                        width: 260,
                                        child: Text(
                                          'Position: Graphic & Web Designer',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 6.0)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 12.0),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 9)),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.0),
                                    color: Colors.white70),
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.only(top: 8),
                                child: Image.asset(
                                  'images/profile_1.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 12.0)),
                              Center(
                                child: Container(
                                  height: 60,
                                  width: 270,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      color: Colors.transparent),
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 10.0)),
                                      Container(
                                        height: 20,
                                        width: 260,
                                        child: Text(
                                          'Name: Nyarko Agyarko Wisdom',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: 2.0,
                                          width: 260,
                                          color: Colors.black),
                                      Padding(padding: EdgeInsets.only(top: 3)),
                                      Container(
                                        height: 25,
                                        width: 260,
                                        child: Text(
                                          'Position: Graphic & Web Designer',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 6.0)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 12.0),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 9)),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.0),
                                    color: Colors.white70),
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.only(top: 8),
                                child: Image.asset(
                                  'images/profile_1.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 12.0)),
                              Center(
                                child: Container(
                                  height: 60,
                                  width: 270,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      color: Colors.transparent),
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 10.0)),
                                      Container(
                                        height: 20,
                                        width: 260,
                                        child: Text(
                                          'Name: Nyarko Agyarko Wisdom',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: 2.0,
                                          width: 260,
                                          color: Colors.black),
                                      Padding(padding: EdgeInsets.only(top: 3)),
                                      Container(
                                        height: 25,
                                        width: 260,
                                        child: Text(
                                          'Position: Graphic & Web Designer',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 6.0)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 12.0),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 9)),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.0),
                                    color: Colors.white70),
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.only(top: 8),
                                child: Image.asset(
                                  'images/profile_1.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 12.0)),
                              Center(
                                child: Container(
                                  height: 60,
                                  width: 270,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      color: Colors.transparent),
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 10.0)),
                                      Container(
                                        height: 20,
                                        width: 260,
                                        child: Text(
                                          'Name: Nyarko Agyarko Wisdom',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: 2.0,
                                          width: 260,
                                          color: Colors.black),
                                      Padding(padding: EdgeInsets.only(top: 3)),
                                      Container(
                                        height: 25,
                                        width: 260,
                                        child: Text(
                                          'Position: Graphic & Web Designer',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Padding(padding: EdgeInsets.only(top: 6.0)),
// Container(
// padding: EdgeInsets.only(top: 6.0),
// height: 200,
// decoration: BoxDecoration(
// color: Colors.green,
// borderRadius: BorderRadius.all(Radius.circular(18)
// )),
//
// child: Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(18.0),
// ),
// color: Colors.white54,
// elevation: 20,
// child: Column(
// mainAxisSize: MainAxisSize.min,
// children: [
// ListTile(
// leading: Icon(
// Icons.speaker_group_sharp,
// size: 50,
// ),
// title: Text(
// 'leading tile',
// style: TextStyle(
// fontSize: 22.0,
// color: Colors.black54,
// ),
// ),
// subtitle: Text(
// 'shows our leading tile',
// style: TextStyle(
// fontSize: 12.0, color: Colors.black54),
// ),
// ),
// ButtonBar(
// children: [
// ElevatedButton.icon(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(
// Colors.black26)),
// onPressed: () => debugPrint(''),
// icon: Icon(Icons.clear_all_rounded),
// label: Text('yeah')),
// ElevatedButton.icon(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(
// Colors.black26)),
// onPressed: () => debugPrint(''),
// icon: Icon(Icons.ac_unit),
// label: Text('okayy')),
// ],
// )
// ],
// ),
// ),
// ),
