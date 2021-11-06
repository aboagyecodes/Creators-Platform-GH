import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  _SalesPageState createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {

  int counterVAL = 0;
  int flyerVAL = 0;

  _addOnCounter (int){
    setState(() {
      int = counterVAL;
      counterVAL++;
    });

  }

  _subtractCounter(int){
    setState(() {
      int = counterVAL;
      counterVAL--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0))
        ),
        backgroundColor: Colors.blueAccent.shade400,
        elevation: 0.0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        actions: [
          IconButton(
              onPressed: null, icon: Icon(Icons.person_sharp, color: Colors.white)),
          IconButton(
              onPressed: null, icon: Icon(Icons.calendar_view_week_rounded, color: Colors.white)),
          IconButton(
              onPressed: null, icon: Icon(Icons.shopping_cart, color: Colors.white))
        ],
      ),
        body: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.white30),
            padding: EdgeInsets.only(left: 6.0, right: 6.0, top: 6.0),
            alignment: Alignment.center,
            child: ListView(
              children: [
              // Padding(
              //   padding: EdgeInsets.only(top: 2.0, left: 10.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       IconButton(
              //           onPressed: (){
              //             Navigator.pop(context);
              //           }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
              //       Container(
              //         width: 125.0,
              //         child: Row(
              //           children: [
              //             IconButton(
              //                 onPressed: null, icon: Icon(Icons.person_sharp, color: Colors.black)),
              //             IconButton(
              //                 onPressed: null, icon: Icon(Icons.calendar_view_week_rounded, color: Colors.black))
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
                Container(
                  height: 210,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.only(top: 4.0, bottom: 3.0, left: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: 185,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: Card(
                              color: Colors.transparent,
                              shadowColor: Colors.brown,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/cyn_flyer.jpg')),
                                    borderRadius: BorderRadius.circular(18.0),
                                    color: Colors.transparent),
                                padding: EdgeInsets.all(2.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 24,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.transparent),
                              child: Text(
                                'FLYERS',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 6)),
                      Container(
                        height: 140,
                        width: 2.0,
                        color: Colors.black,
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Container(
                        padding: EdgeInsets.all(12.0),
                        height: 160,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('\$150 - \$600 ',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
                            OutlinedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueAccent.shade400),
                                  elevation: MaterialStateProperty.all(4),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outlined,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Brief',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,fontSize: 15, fontWeight: FontWeight.w400),
                                )),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.transparent,
                                ),
                                padding: EdgeInsets.all(1.0),
                                height: 50,
                                width: 100,
                                child: Card(
                                  color: Colors.white54,
                                  shadowColor: Colors.blueGrey.shade50,
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {setState(() {
                                          _subtractCounter(int);
                                        });},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                            child: Icon(
                                              Icons.remove_outlined,
                                              color: Colors.blueAccent.shade400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '$counterVAL',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {_addOnCounter(counterVAL);},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                              child: Icon(
                                            Icons.add_outlined,
                                            color: Colors.blueAccent.shade400,
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 210,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.only(top: 4.0, bottom: 3.0, left: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: 185,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: Card(
                              color: Colors.transparent,
                              shadowColor: Colors.brown,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/cyn_logo.jpg')),
                                    borderRadius: BorderRadius.circular(18.0),
                                    color: Colors.transparent),
                                padding: EdgeInsets.all(2.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 24,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.transparent),
                              child: Text(
                                'LOGOS',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 6)),
                      Container(
                        height: 140,
                        width: 2.0,
                        color: Colors.black,
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Container(
                        padding: EdgeInsets.all(12.0),
                        height: 160,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('\$150 - \$600 ',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
                            OutlinedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueAccent.shade400),
                                  elevation: MaterialStateProperty.all(4),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outlined,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Brief',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,fontSize: 15, fontWeight: FontWeight.w400),
                                )),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.transparent,
                                ),
                                padding: EdgeInsets.all(1.0),
                                height: 50,
                                width: 100,
                                child: Card(
                                  color: Colors.white54,
                                  shadowColor: Colors.blueGrey.shade50,
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(12.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {_subtractCounter(counterVAL);},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                            child: Icon(
                                              Icons.remove_outlined,
                                              color: Colors.blueAccent.shade400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '$counterVAL',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {_addOnCounter(counterVAL);},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                              child: Icon(
                                                Icons.add_outlined,
                                                color: Colors.blueAccent.shade400,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 210,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.only(top: 4.0, bottom: 3.0, left: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: 185,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: Card(
                              color: Colors.transparent,
                              shadowColor: Colors.brown,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/cyn_shirt.jpg')),
                                    borderRadius: BorderRadius.circular(18.0),
                                    color: Colors.transparent),
                                padding: EdgeInsets.all(2.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 24,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.transparent),
                              child: Text(
                                'T-SHIRTS',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 6)),
                      Container(
                        height: 140,
                        width: 2.0,
                        color: Colors.black,
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Container(
                        padding: EdgeInsets.all(12.0),
                        height: 160,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('\$150 - \$600 ',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
                            OutlinedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueAccent.shade400),
                                  elevation: MaterialStateProperty.all(4),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outlined,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Brief',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,fontSize: 15, fontWeight: FontWeight.w400),
                                )),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.transparent,
                                ),
                                padding: EdgeInsets.all(1.0),
                                height: 50,
                                width: 100,
                                child: Card(
                                  color: Colors.white54,
                                  shadowColor: Colors.blueGrey.shade50,
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(12.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {_subtractCounter(counterVAL);},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                            child: Icon(
                                              Icons.remove_outlined,
                                              color: Colors.blueAccent.shade400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '$counterVAL',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {_addOnCounter(counterVAL);},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                              child: Icon(
                                                Icons.add_outlined,
                                                color: Colors.blueAccent.shade400,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 210,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.only(top: 4.0, bottom: 3.0, left: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: 185,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: Card(
                              color: Colors.transparent,
                              shadowColor: Colors.brown,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/cyn_product.jpg')),
                                    borderRadius: BorderRadius.circular(18.0),
                                    color: Colors.transparent),
                                padding: EdgeInsets.all(2.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 24,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.transparent),
                              child: Text(
                                'PRODUCTS',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 6)),
                      Container(
                        height: 140,
                        width: 2.0,
                        color: Colors.black,
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Container(
                        padding: EdgeInsets.all(12.0),
                        height: 160,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('\$150 - \$600 ',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
                            OutlinedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueAccent.shade400),
                                  elevation: MaterialStateProperty.all(4),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outlined,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Brief',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,fontSize: 15, fontWeight: FontWeight.w400),
                                )),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.transparent,
                                ),
                                padding: EdgeInsets.all(1.0),
                                height: 50,
                                width: 100,
                                child: Card(
                                  color: Colors.white54,
                                  shadowColor: Colors.blueGrey.shade50,
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(12.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {_subtractCounter(counterVAL);},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                            child: Icon(
                                              Icons.remove_outlined,
                                              color: Colors.blueAccent.shade400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '$counterVAL',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {_addOnCounter(counterVAL);},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            color: Colors.transparent,
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                              child: Icon(
                                                Icons.add_outlined,
                                                color: Colors.blueAccent.shade400,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 12.0)),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.all(5.0),
                ),
                Padding(padding: EdgeInsets.only(top: 12.0)),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.all(5.0),
                ),
                Padding(padding: EdgeInsets.only(top: 12.0)),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.all(5.0),
                ),
              ],
            )));
  }
}
