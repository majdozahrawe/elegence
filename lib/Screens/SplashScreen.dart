import 'dart:io';
import 'package:flutter/material.dart';

import '../data.dart';
import 'home/home_header.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  List<SliderModel> mySLides = <SliderModel>[];
  int slideIndex = 0;
  late PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xFFB99D59) : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: Scaffold(
        backgroundColor: Color(0xFF1B1B1B),
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[
              SlideTile(
                imagePath: mySLides[0].getImageAssetPath(),
                title: mySLides[0].getTitle(),
                desc: mySLides[0].getDesc(),
              ),
              SlideTile(
                imagePath: mySLides[1].getImageAssetPath(),
                title: mySLides[1].getTitle(),
                desc: mySLides[1].getDesc(),
              ),
              SlideTile(
                imagePath: mySLides[2].getImageAssetPath(),
                title: mySLides[2].getTitle(),
                desc: mySLides[2].getDesc(),
              )
            ],
          ),
        ),
        bottomSheet: slideIndex != 2 ? Container(
          margin: EdgeInsets.symmetric(vertical: 0),
          child: Container(
            color:  Color(0xFF1B1B1B),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: (){
                    controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
                  },
                  //  splashColor: Colors.blue[50],
                  child: Text(
                    "SKIP",
                    style: TextStyle(color: Color(0xFFB99D59), fontWeight: FontWeight.w600),
                  ),
                ),
                Container(

                  child: Row(
                    children: [
                      for (int i = 0; i < 3 ; i++) i == slideIndex ? _buildPageIndicator(true): _buildPageIndicator(false),
                    ],),
                ),
                FlatButton(
                  onPressed: (){
                    print("this is slideIndex: $slideIndex");
                    controller.animateToPage(slideIndex + 1, duration: Duration(milliseconds: 500), curve: Curves.linear);
                  },
                  // splashColor: Colors.blue[50],
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Color(0xFFB99D59), fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ): InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),);
          },
          child: Container(
            height: Platform.isIOS ? 70 : 60,
            color:  Color(0xFF1B1B1B),
            alignment: Alignment.center,
            child: Text(
              "GET STARTED NOW",
              style: TextStyle(color: Color(0xFFB99D59), fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({required this.imagePath, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          SizedBox(
            height: 40,
          ),
          Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                title, textAlign: TextAlign.center, style: TextStyle(
                // fontFamily: 'monbaiti',
                fontSize: 25,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Color(0xFF000000),
              ),
              ),
              // Solid text as fill.
              Text(
                title, textAlign: TextAlign.center, style: TextStyle(
                fontSize: 25,
                color: Color(0xFFbeb8b8),
              ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: <Widget>[
              Text(
                desc, textAlign: TextAlign.center, style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 15,
                color: Color(0xFF6F6C6C),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}