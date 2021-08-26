import 'package:elegence/Screens/home/Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 1.00,//20.0,
        child: Theme(
    data: Theme.of(context).copyWith(
        canvasColor: Color(0xFF1B1B1B),
    ),

child:  Drawer(
  child: new ListView(
    padding: new EdgeInsets.symmetric(horizontal: 80),
    children: <Widget>[

        DrawerHeader(

          child: Text(
            'MENU',
            style: TextStyle(color: Color(0xFF6F6C6C), fontSize: 15, fontFamily: 'SourceSansPro',),
            textAlign: TextAlign.center,

          ),),
        new ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 80),
          selectedTileColor:Color(0xFFB99D59) ,
            focusColor:Color(0xFFB99D59),
            hoverColor: Color(0xFFB99D59),
          title: new Text("Profile",
              textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFbeb8b8), fontSize: 20, fontFamily: 'SourceSansPro',),

          ),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),

        new Divider(),
        new ListTile(
          selectedTileColor:Color(0xFFB99D59) ,

          hoverColor: Color(0xFFB99D59),
          focusColor:Color(0xFFB99D59),
          title: new Text("BookMarks",
            textAlign: TextAlign.center,

            style: TextStyle(color: Color(0xFFbeb8b8), fontSize: 20, fontFamily: 'SourceSansPro',),
          ),
          onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen())),
        ),

        new Divider(),
        new ListTile(
          selectedTileColor:Color(0xFFB99D59) ,

          hoverColor: Color(0xFFB99D59),
            focusColor:Color(0xFFB99D59),
            onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          title: new Text("News Feed",
            textAlign: TextAlign.center,

            style: TextStyle(color: Color(0xFFbeb8b8), fontSize: 20, fontFamily: 'SourceSansPro',),
          ),
        ),
        new Divider(),
      new ListTile(
        selectedTileColor:Color(0xFFB99D59) ,
        minVerticalPadding: 20,
        hoverColor: Color(0xFFB99D59),
          focusColor:Color(0xFFB99D59),
          onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        title: new Text("Preferences",
          textAlign: TextAlign.center,

          style: TextStyle(color: Color(0xFFbeb8b8), fontSize: 20, fontFamily: 'SourceSansPro',),
        ),
      ),
      new Divider(),
        new ListTile(
          selectedTileColor:Color(0xFFB99D59) ,
          contentPadding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          focusColor:Color(0xFFB99D59) ,
          trailing: new Icon(Icons.close_sharp,color: Color(0xFFbeb8b8) ,),
          onTap: () => Navigator.of(context).pop(),
        ),
    ],
  ),
),
    ),
      ),

      endDrawer: Drawer(
        child: Container(
          color: Color(0xFF1B1B1B),
          child: Center(
            child: Text(
              "Search",
              style: TextStyle(
                color:Color(0xFFB99D59),
                    fontSize: 20,
              ),
            ),
          ),
        ),
      ),

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset("assets/icons/newMenu5.svg"),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        iconTheme: IconThemeData(color: Color(0xFFB99D59)),
        elevation: 0.5,
        backgroundColor: Color(0xFF1B1B1B),
        centerTitle: true,
        title: Text(
          "Elegance",
        ),

        actions: <Widget>[
          Builder(
            builder: (context){
              return IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          )
        ],

      ),
      body: BodyOfHomeScreen(),
      backgroundColor:Color(0xFF1B1B1B) ,
    );
  }
}