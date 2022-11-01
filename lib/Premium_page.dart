import 'package:flutter/material.dart';
import 'Congrats_page.dart';

class Premium_page extends StatefulWidget {
  const Premium_page({Key? key}) : super(key: key);

  @override
  State<Premium_page> createState() => _Premium_pageState();
}

class _Premium_pageState extends State<Premium_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFefefef),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/menu_bar.png',
                            width: 25,
                            height: 25,
                          )),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'Shortlisted Courses',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/filterr.png',
                            width: 25,
                            height: 25,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: ListView(
                    children: [
                      Center(
                          child: Text(
                        '12 Saved Courses',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),

                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Master of Business Administration',
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Image.network(
                                    'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Charles Sturt University,Melbourne',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Apply'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Icon(
                                    Icons.calendar_month,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Jan & sep 2021',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                SizedBox(width: 4,),
                                  Icon(
                                    Icons.monetization_on,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10,000 p/yr',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //second item
                      Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Bachelor of Business( 3 years Program)',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Image.network(
                                    'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Charles Sturt University,Melbourne',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                        return Congrats_page();
                                      }));
                                    },
                                    child: Text('Applied'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.yellow[800],
                                      padding:
                                      EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Icon(
                                    Icons.calendar_month,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Jan & sep 2021',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Icon(
                                    Icons.monetization_on,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '10,000 p/yr',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //3rd item
                      Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Enterpreneurship,Innovation and Leadership M.P.S',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),

                                  Icon(
                                    Icons.star,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Image.network(
                                    'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'University of Maryland Baltimore country',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                  onPressed: () {},
                              child: Text('Apply'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                padding:
                                EdgeInsets.fromLTRB(20, 0, 20, 0),
                              ),
                            ),
                           SizedBox(width: 4,),
                                  Icon(
                                    Icons.calendar_month,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Jan & sep 2021',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Icon(
                                    Icons.monetization_on,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '10,000 p/yr',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //4th item
                      Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Master of Business Administration',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Image.network(
                                    'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Charles Sturt University,Melbourne',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Apply'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      padding:
                                      EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    ),
                                  ),SizedBox(width: 4,),
                                  Icon(
                                    Icons.calendar_month,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Jan & sep 2021',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                SizedBox(width: 4,),
                                  Icon(
                                    Icons.monetization_on,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10,000 p/yr',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //5th item
                      Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
