import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Home_page.dart';
import 'Bottom_navi.dart';

class Mobile_number_page extends StatefulWidget {
  const Mobile_number_page({Key? key}) : super(key: key);

  @override
  State<Mobile_number_page> createState() => _Mobile_number_pageState();
}

class _Mobile_number_pageState extends State<Mobile_number_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFefefef),
        body:Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 47, 30, 10),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icon.svg'),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Bottom_navi();
                        }));
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.arrow_forward,color: Colors.white,),
                        backgroundColor: Color(0xFFe24d1d),
                        radius: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 110,),
            Text('Enter your number',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight:FontWeight.bold),),
            SizedBox(height: 10,),
            Text("we need to make sure you'r human. we" ,style: TextStyle(fontSize: 15),),
            SizedBox(height: 5,),
            Text("won't be calling you (unless you want us to!)" ,style: TextStyle(fontSize: 15),),
            SizedBox(height: 40,),


            Row(
              children: [
                SizedBox(width: 35,),
                Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        hintText: '+61',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 210,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        hintText: '',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),


          ],
        ) ,
      ),
    );
  }
}
