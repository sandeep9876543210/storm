import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Experince_page extends StatefulWidget {
  const Experince_page({Key? key}) : super(key: key);

  @override
  State<Experince_page> createState() => _Experince_pageState();
}

class _Experince_pageState extends State<Experince_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFefefef),
        body: Column(
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
                      onTap: () {},
                      child: CircleAvatar(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        backgroundColor: Color(0xFFe24d1d),
                        radius: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
              child: Column(
                children: [
                  Text(
                    'Personlised your ',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'experience ',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Where are you at in your journey?',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'Just looking',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'What would you like to study?',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'Select climate',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Where would you like to study?',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: TextField(
                        onTap: () {},
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Select countries',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'You can change these settings later',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
