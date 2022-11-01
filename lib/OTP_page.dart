import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Mobile_number_page.dart';

class OTP_page extends StatefulWidget {
  const OTP_page({Key? key}) : super(key: key);

  @override
  State<OTP_page> createState() => _OTP_pageState();
}

class _OTP_pageState extends State<OTP_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFefefef),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 50, 35, 16),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icon.svg'),

                    Spacer(),
                    GestureDetector(
                      onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                         return Mobile_number_page();
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


            SizedBox(height: 130,),
            Text('Enter SMS code',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight:FontWeight.bold),),
            SizedBox(height: 10,),
            Text("we need to make sure you'r human. we" ,style: TextStyle(fontSize: 16),),
            SizedBox(height: 5,),
            Text("won't be calling you (unless you want us to!)" ,style: TextStyle(fontSize: 16),),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.fromLTRB(75,0,75,0),
              child: Container(
                height: 50,
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
            ),
            
          ],
        ),
      ),
    );
  }
}
