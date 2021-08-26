import 'package:carousel_slider/carousel_slider.dart';
import 'package:elegence/Screens/SplashScreen.dart';
import 'package:elegence/Screens/home/product_view.dart';
import 'package:elegence/models/Product.dart';
import 'package:flutter/material.dart';

class BodyOfHomeScreen extends StatefulWidget {
  @override
  _BodyOfHomeScreenState createState() => _BodyOfHomeScreenState();
}

class _BodyOfHomeScreenState extends State<BodyOfHomeScreen> {
  final items = ["Lazurd'y         Lacoste         Guci", "Lacoste", "Guci", "Chanel"];



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
            children: [
              Image.asset('assets/images/topsliderShadow.jpg',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover),
          Positioned(
            bottom: 10,
            right: 12,
            child: Container(
              width: 300,
              //color: Colors.black54,
              padding: EdgeInsets.symmetric(horizontal: 90,vertical: 90),
              child: Text(
                'Check Out',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
              Positioned(
                bottom: 0,
                left: 62,
                child: Container(
                  width: 400,
                  //color: Colors.black54,
                  padding: EdgeInsets.symmetric(horizontal: 70,vertical: 70),
                  child: Text(
                    'Limetid Edition',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 112,
                child: Container(
                  width: 400,
                  //color: Colors.black54,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
                  child: Text(
                    'Collection',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),


            ],

          ),
        SizedBox(height: 20,),
        CarouselSlider.builder(
            options: CarouselOptions(
              height: 100.0,
              autoPlay: true,
            ),
            itemCount: items.length,
            itemBuilder: (context,itemIndex,realIndex)
            {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SplashScreen()));
            },
            child:Text(items[itemIndex],
                  style: TextStyle(
                    color: Color(0xFFbeb8b8),
                    fontSize: 22,
                  ),),
                ),
              );
            }

        ),
        SizedBox(height: 20,),
        Text(
          'Experience The',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32, color: Colors.white,
          ),
        ),
        SizedBox(height: 20,),
        Text(
          'Luxury',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32, color: Colors.white,
          ),
        ),
        SizedBox(height: 20,),
        Padding(
    padding: EdgeInsets.fromLTRB(0, 20, 230, 140),
    child: Text(
                 "T R E N D I N G  N O W",
                 style: TextStyle(
                   fontFamily: "SourceSansPro",
                 fontSize: 14,
                 color:  Color(0xFF6F6C6C),
                       ),
                 ),
    ),
        SizedBox(height: 20,),
        SingleChildScrollView(
          child: Row(
            children: [
              ...List.generate(
                products.length,
                    (index) {
                      if (products[index].isPopular)
                        return ProductCard(product: products[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width:20),
            ],
          ),
        )

      ],
    );

  }
}
