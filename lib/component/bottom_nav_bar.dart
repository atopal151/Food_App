import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details_screen.dart';
import '../screens/home/home_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DetailsScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent
        ), child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black26) ,
              label: "",
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.white),
                    //offset:Offset(0,4),
                  ],

                ),
                child: Icon(Icons.home) ,
              )
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,color: Colors.black26),
              label: "",
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.white),
                    //offset:Offset(0,4),
                  ],

                ),
                child: Icon(Icons.favorite_outlined) ,
              )
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.black26,),
              label: "",
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.white),
                    //offset:Offset(0,4),
                  ],

                ),
                child: Icon(Icons.person) ,
              )
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
      ),
    );
  }
}

/*
class BottomNavBar extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        height: 75,
        width: double.infinity,
        // double.infinity means it cove the available width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 33,
              color: Color(0xFF6DAED9).withOpacity(0.11),
            ),
          ],
        ),

     child:  Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
         IconButton(
           icon: SvgPicture.asset("assets/icons/home.svg"),
           onPressed: () {
             Navigator.pushReplacement(
               //Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => HomeScreen()));
           },
         ),
         IconButton(
           icon: SvgPicture.asset("assets/icons/Following.svg"),
           onPressed: () {

           },
         ),
         IconButton(
           icon: SvgPicture.asset("assets/icons/Glyph.svg"),
           onPressed: () {},
         ),
         IconButton(
           icon: SvgPicture.asset("assets/icons/person.svg"),
           onPressed: () {},
         ),
       ],
     ),
    );
  }
}


*/

