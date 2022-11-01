import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Search_page extends StatefulWidget {
  const Search_page({Key? key}) : super(key: key);

  @override
  State<Search_page> createState() => _Search_pageState();
}

class _Search_pageState extends State<Search_page> {
  bool onloading = true;
  String email = "";
  List listcourses = [];

  Future sharedvalidation() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    var mail = shared.getString('email');
    setState(() {
      email = mail!;
      print('email----$email');
      onApicall();
    });
  }
  Future onApicall() async {
    Response response = await get(
      Uri.parse(
          'http://app.stormoverseas.com/API/UniversitiesAPI/PopularCoursesList?Email=$email&=&='),
    );
    setState(() {
      onloading = false;
    });
    if (response.statusCode == 200) {
      Map mapresponse = json.decode(response.body);
     String msg=mapresponse['msg'];
     print('message ---:'+msg);
      listcourses = mapresponse['PopularCoursesList'];
    }
  }

  @override
  void initState() {
    sharedvalidation();
    // TODO: implement initState
    super.initState();
  }

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
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/left_arrow.png',
                                  width: 25,
                                  height: 25,
                                )),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Text(
                              'Search results',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
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
                    Divider(color: Colors.grey, thickness: 1),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),
                      child: SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35, right: 20),
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                                hintText: 'business management',
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.close,
                                  color: Colors.grey[700],
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                      for (int i = 0; i < listcourses.length; i++)
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
                                        child: Text(listcourses[i]['CourseName']
                                      /*'Master of Business  Administration'*/,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    Icon(
                                      Icons.star_border,
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
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal),
                                    )),
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
                                    Icon(
                                      Icons.calendar_month,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Jan & sep 2021',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.money,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
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
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Divider(
                                  color: Colors.grey[400],
                                  thickness: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),

                      //second item
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
