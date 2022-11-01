

import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'Search_page.dart';
import 'Premium_page.dart';
import 'Messages_page.dart';
import 'Profile_page.dart';
class Bottom_navi extends StatefulWidget {
  const Bottom_navi({Key? key}) : super(key: key);

  @override
  State<Bottom_navi> createState() => _Bottom_naviState();
}

class _Bottom_naviState extends State<Bottom_navi> {
  int no = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(
            child: no==0?Home_page():no==1?Search_page():no==2?Premium_page():no==3?Messages_page():Profiles_page()

        ),
        bottomNavigationBar:
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),


            child:BottomNavigationBar(
              type:  BottomNavigationBarType.fixed,
              backgroundColor: Color(0xFF222222),
              selectedItemColor:Color(0xFFe24d1d),
              unselectedItemColor: Color(0xFFffffff),

              selectedLabelStyle: TextStyle(
                fontSize: 13,
                fontFamily: "Lorin",
                color: Color(0xFFe24d1d),
              ),

              items:  [
                BottomNavigationBarItem(

                  icon: Image.asset('assets/home.png',height: 25,width: 25,color: Color(0xFFefefef),),
                  activeIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
                    child: Image.asset('assets/home.png', height: 25,width: 25,color: Color(0xFFe24d1d),),
                  ),
                  label: '',
                ),

                BottomNavigationBarItem(

                  icon: Image.asset('assets/search.png',height: 25,width: 25,color: Color(0xFFefefef)),
                  activeIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
                    child:  Image.asset('assets/search.png', height: 25,width: 25,color: Color(0xFFe24d1d),),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(

                  icon: Image.asset('assets/premium.png',height: 25,width: 25,color: Color(0xFFefefef)),
                  activeIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
                    child: Image.asset('assets/premium.png', height: 25,width: 25,color: Color(0xFFe24d1d),),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(

                  icon: Image.asset('assets/chat.png',height: 25,width: 25,color: Color(0xFFefefef)),
                  activeIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
                    child:Image.asset('assets/chat.png', height: 25,width: 25,color: Color(0xFFe24d1d),),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(

                  icon: Image.asset('assets/user.png',height: 25,width: 25,color: Color(0xFFefefef)),
                  activeIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
                    child:Image.asset('assets/user.png', height: 25,width: 25,color: Color(0xFFe24d1d),),
                  ),
                  label: '',
                ),
              ],
              currentIndex: no,
              onTap: (int index) {
                setState(() {
                  no = index;
                });
              },
            ),

          ),
        ),



      ),
    );
  }
}
