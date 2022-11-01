import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'Notification_page.dart';
import 'Explore_study_app.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'Terms_and_conditions_page.dart';
import 'Explore_study_articles_page.dart';
import 'package:http/http.dart'as http;
import 'Experince_page.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
var nmbr=" ";
String name="";
  bool isLoading = true;
  String images=" ";
  String image1=" ";
  String image2=" ";
  int ontap=1;
  int notification = 0;
  int pageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var dropdownvalue = 'Profile';
  var items = ['+94', '+977', '+64', "+61", "+1", '+44', '+65', '+880'];
  List<String> services = [
    'Test Preparation',
    'Refer and Earn',
    'Quiz',
    "Talk to alumni",
    "Scholarship",
  ];
  List<dynamic> listresponsewebinar=[];
  List<dynamic> Labelswebinars=[];
  List<dynamic> listcommunity=[];
  List<dynamic> listupcoming=[];

Future sharedvalidation()async{
  final SharedPreferences shared=await SharedPreferences.getInstance();
  var mblno=shared.getString('mobile_number');
  var name1=shared.getString('name');
  setState(() {
    nmbr=mblno!;
    name=name1!;
    onApiwebinar();

  });
}

  Future onApiwebinar()async{
    Response response =await post(Uri.parse('https://app.stormoverseas.com/API/MobileBanners/MostPopularAPI'),body: {
    "atype":"android",
      'Email':'"vianybabu335@gmail.com',
      'position':'top'
    });
    if(response.statusCode==200){
      Map mapresponse=json.decode(response.body);
      listresponsewebinar=mapresponse['Labels'];
      Labelswebinars=listresponsewebinar[0]['items'];
      listcommunity=mapresponse['ReadytoApply'];
      listupcoming=mapresponse['RecentUpdates'];

    }
    setState(() {
      onApiCall();
    });
  }
List<dynamic> listresponse=[];

  Future onApiCall()async{
    Response response =await get(Uri.parse('https://api.stormoverseas.com/API/MobileBanners/List?Type=TOP'));
    if(response.statusCode==200){
      Map mapresponse=json.decode(response.body);
       listresponse=mapresponse['mobileBannersList'];
    }
    setState(() {
      isLoading = false;

    });
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
        key: _scaffoldKey,
        backgroundColor: Color(0xFFefefef),
        drawer: Drawer(
          width: double.maxFinite,
          child: Container(
            child: Column(
              children: [
                MyDrawerlist(),
              ],
            ),
          ),
        ),
        body:
        isLoading
            ? Shimmer.fromColors(
          baseColor: Color(0xfff1f2f2),
          highlightColor: Color(0xfff1f2f2),
          enabled: true,
          child: Padding(
            padding:
            const EdgeInsets.fromLTRB(24.0, 23.0, 24, 0),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                          color: Color(0xFFF2F2F2), width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 64.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8, 14, 0, 12),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(1.0),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.6,
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                          color: Color(0xFFF2F2F2), width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 64.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8, 14, 0, 12),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(1.0),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.6,
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                          color: Color(0xFFF2F2F2), width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 64.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8, 14, 0, 12),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(1.0),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.6,
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                          color: Color(0xFFF2F2F2), width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 64.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8, 14, 0, 12),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(1.0),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.6,
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                          color: Color(0xFFF2F2F2), width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 64.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8, 14, 0, 12),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(1.0),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.6,
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                          color: Color(0xFFF2F2F2), width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 64.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8, 14, 0, 12),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(1.0),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.6,
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                          color: Color(0xFFF2F2F2), width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 64.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8, 14, 0, 12),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(1.0),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.6,
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              new Text(
                                '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF141E28)
                                      .withOpacity(0.45),
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontFamily: "Lorin",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
            :
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _scaffoldKey.currentState?.openDrawer();
                            });
                          },
                          icon: Image.asset(
                            'assets/menu_bar.png',
                            width: 25,
                            height: 25,
                          )),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              notification = 1;
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Notifications_page();
                              }));
                            });
                          },
                          icon: Image.asset(
                            'assets/notification.png',
                            width: 25,
                            height: 25,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back, $name.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Discover your overseas study options with storm.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),
                      child: Container(
                        height: 50,
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.arrow_back,
                              color: Colors.grey[700],
                            ),
                            suffixIcon: Icon(
                              Icons.close,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Personlize these results to refine your these courses.',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                  return Experince_page();
                                }));
                              });
                            },
                            child: Text(
                              'GET STARTED',
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFe34c17),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Study areas',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        for(int i=0;i<Labelswebinars.length;i++)
                        Container(
                          width: 230,
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.network(  Labelswebinars[i]['ImageUrl']
                                      /*'assets/tick.png'*/,
                                      height: 90,
                                      width: 90,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Engineering & science',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            '210 Courses',
                                            style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Image.network(Labelswebinars[i]['VideoThumbnail']
                                      /*'assets/check.png'*/,
                                      height: 90,
                                      width: 90,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Engineering & science',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            '210 Courses',
                                            style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Suggested institutions',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 160,
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 8, top: 2),
                                    child: Image.network(
                                      'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://s3.ap-south-1.amazonaws.com/leverageedu/school-logo/logo_1646287422762.png',
                                        width: 125,
                                        height: 105,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        //second item
                        Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 8, top: 2),
                                    child: Image.network(
                                      'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                                      height: 30,
                                      width: 30,

                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://www-s3-live.kent.edu/s3fs-root/s3fs-public/file/STARK-CENTERED-STACKED-LOGO-BLUE-GOLD.jpg',
                                        width: 125,
                                        height: 105,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //3rd item
                        Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 8, top: 2),
                                    child: Image.network(
                                      'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://i.pinimg.com/736x/20/4e/12/204e125f26e2afe4dbc37eaa4c680e84.jpg',
                                        width: 125,
                                        height: 105,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Upcoming Webinars',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 180,
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        for(int i=0;i<listupcoming.length;i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Stack(
                            children: [
                              Container(
                                width: 205,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          listupcoming[i]['ImageUrl']
                                      ),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                width: 205,
                                height: 180,
                                child: ShaderMask(
                                  shaderCallback: (rect) {
                                    return LinearGradient(
                                            colors: [
                                          Colors.white,
                                          Colors.white.withOpacity(0.5),
                                          Colors.white.withOpacity(0.0),
                                        ],
                                            stops: [
                                          0.0,
                                          0.6,
                                          0.9
                                        ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)
                                        .createShader(rect);
                                  },
                                  blendMode: BlendMode.dstOut,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.blue.shade200,
                                            Colors.black
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50,left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.white,
                                    ),
                                Container(
                                  width: 185,
                                  child: Flexible(
                                    child: Text( Labelswebinars[i]['Title'],maxLines: 2
                                      /*'Austrilia Virtual\n Education Fair'*/,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,),
                                    ),
                                  ),
                                ),
                                Text(
                                  '16 December, 10am',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        //second item
                      /*  Stack(
                          children: [
                            Container(
                              width: 205,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.dsslearning.com/content/images/headers/webinars-1116x576.jpg',
                                    ),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              width: 210,
                              height: 180,
                              child: ShaderMask(
                                shaderCallback: (rect) {
                                  return LinearGradient(
                                          colors: [
                                        Colors.white,
                                        Colors.white.withOpacity(0.5),
                                        Colors.white.withOpacity(0.0),
                                      ],
                                          stops: [
                                        0.0,
                                        0.6,
                                        0.9
                                      ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)
                                      .createShader(rect);
                                },
                                blendMode: BlendMode.dstOut,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.blue.shade200,
                                          Colors.black
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                              child: Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
                              child: Text(
                                'University webinars\n goes in here',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 145, 0, 0),
                              child: Text(
                                '16 December, 10am',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),*/
                        //3rd item
                        /*Stack(
                          children: [
                            Container(
                              width: 210,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://media.istockphoto.com/photos/cropped-image-of-businessman-using-laptop-at-desk-picture-id1216652501?b=1&k=20&m=1216652501&s=612x612&w=0&h=VMg-q25WJj38DR2VQZj2L3MPXT_lGWFdBPhQGFIKrAQ=',
                                    ),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              width: 205,
                              height: 180,
                              child: ShaderMask(
                                shaderCallback: (rect) {
                                  return LinearGradient(
                                          colors: [
                                        Colors.white,
                                        Colors.white.withOpacity(0.5),
                                        Colors.white.withOpacity(0.0),
                                      ],
                                          stops: [
                                        0.0,
                                        0.6,
                                        0.9
                                      ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)
                                      .createShader(rect);
                                },
                                blendMode: BlendMode.dstOut,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.blue.shade200,
                                          Colors.black
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                              child: Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
                              child: Text(
                                'Austrilia Virtual\n Education Fair',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 145, 0, 0),
                              child: Text(
                                '16 December, 10am',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),*/
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child:
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 310,
                          viewportFraction: 1.0,
                          initialPage: 0,
                          reverse: false,
                          autoPlay: true,
                          aspectRatio: 5.0,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          enlargeCenterPage: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            setState(() {
                              pageIndex = index;
                            });
                          }),
                      items: [
                        for(int i=0;i<listresponse.length;i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () async {

                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        listresponse[i]['bannerUrl']),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                //  height: 180,
                                width: double.infinity,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280),
                    child: Center(
                      child: CarouselIndicator(
                        width: 7,
                        cornerRadius: 10,
                        count: listresponse.length,
                        index: pageIndex,
                        color: Colors.white,
                        activeColor: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Community where you need it',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        for(int i=0;i<listcommunity.length;i++)
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(listcommunity[i]['ImageUrl']
                                            /*'https://dpbnri2zg3lc2.cloudfront.net/en/wp-content/uploads/2022/07/The_product_manager_career_path_can_take_you_far-1.jpg'*/,
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(60, 60, 0, 0),
                                    child: Icon(
                                      size: 50,
                                      Icons.people_alt_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(listcommunity[i]['Location']
                              /*'Forum discussion'*/,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)

            ],
          ),
        ),
      ),
    );
  }

  Widget MyDrawerlist() {
    return Expanded(
      child: Container(
        height: double.maxFinite,
        color: Color(0xFFefefef),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _scaffoldKey.currentState?.closeDrawer();
                      });
                    },
                    child: Image.asset(
                      'assets/closee.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'MENU',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Text('      ',)
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ontap=2;
                         Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                           return Terms_and_conditions_page();
                         }));
                        });
                      },
                      child: Container(
                        width: double.maxFinite,
                        color:ontap==2?Color(0XFFe24d1d):Color(0XFFefefef) ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom:15 ),
                              child: Text(
                                'Dashboard',
                                style: TextStyle(
                                    color:ontap==2?Colors.white:Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              ontap=6;
                            });
              },
                          child: Container(

                            child: Expandable(

                                boxShadow: [],
                                backgroundColor: ontap==6?Color(0XFFe24d1d):Color(0XFFefefef) ,
                                firstChild: Padding(
                                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: ontap==6?Colors.white:Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                secondChild: Container(
                                  color: Color(0XFFefefef),
                                  child: Column(
                                    children: const [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Center(
                                          child: Text(
                                        'Test Preparation',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      )),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Refer and Earn',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Quiz',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Talk to alumni',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Scholarship',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ontap=3;
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return Explore_study_app();
                              }));
                        });

                      },
                      child: Container(
                        width: double.maxFinite,
                        color:ontap==3?Color(0XFFe24d1d):Color(0XFFefefef) ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: Text(
                                'Explore Study',
                                style: TextStyle(
                                    color:ontap==3?Colors.white:Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ontap=4;
                          openpopup();
                        });
                      },
                      child: Container(
                        width: double.maxFinite,
                        color:ontap==4?Color(0XFFe24d1d):Color(0XFFefefef) ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: Text(
                                'Search Courses',
                                style: TextStyle(
                                    color:ontap==4?Colors.white:Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          ontap=5;
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Explore_study_articles_page();
                          }));
                        });
                      },
                      child: Container(
                        width: double.maxFinite,
                        color:ontap==5?Color(0XFFe24d1d):Color(0XFFefefef) ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: Text(
                                'Shortlist',
                                style: TextStyle(
                                    color:ontap==5?Colors.white:Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              ontap=7;
                            });
                          },
                          child: Container(
                            child: Expandable(
                                boxShadow: [],
                                backgroundColor: ontap==7?Color(0XFFe24d1d):Color(0XFFefefef) ,
                                firstChild: Padding(
                                  padding: const EdgeInsets.only(bottom: 5,top: 5),
                                  child: Text(
                                    'Services',
                                    style: TextStyle(
                                        color: ontap==7?Colors.white:Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                secondChild: Container(
                                  color: Color(0XFFefefef),
                                  child: Column(
                                    children: const [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                          child: Text(
                                        'Test Preparation',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      )),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Refer and Earn',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Quiz',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Talk to alumni',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Scholarship',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 0,
                  color: Colors.grey[700],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logout.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log out',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future openpopup() => showDialog(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(15),
        child: AlertDialog(
          insetPadding: EdgeInsets.zero,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: Color(0XFFffffff),
              actions: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            }, icon: Icon(Icons.arrow_back)),
                        Spacer(),
                        Text(
                          "Study areas",
                          style: TextStyle(
                              color: Color(0XFFe35324),
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text('        ')
                      ],
                    ),
                    Divider(
                      color: Colors.grey[600],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        MultiSelectContainer(
                          items: [
                            MultiSelectCard(value: 'Engineering & science', label: 'Engineering & science',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'History', label: 'History',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(
                                value: 'Psychology & Philosophy', label: 'Psychology & Philosophy',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Games & entertainment', label: 'Games & Entertainment',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Art & Design', label: 'Art & Design',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Information technology', label: 'Information technology',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Legal', label: 'Legal',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Business Management', label: 'Business Management',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Education', label: 'Education',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Environment & sustainability', label: 'Environment & sustainability',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Industry & workplace', label: 'Industry & workplace',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Society & health', label: 'Society & health',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Education', label: 'Education',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                            MultiSelectCard(value: 'Education', label: 'Education',margin: EdgeInsets.fromLTRB(8, 4,8, 4),),
                          ],
                          onChange: (allSelectedItems, selectedItem) {

                          },
                          itemsDecoration: MultiSelectDecorations(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey,width: 1),
                            ),
                          ),
                        ),
                        SizedBox(height: 150),
                      ],
                    ),
                    Divider(
                      color: Color(0XFFedf0f6),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 10),
                          child: Text(
                            "Clear all",
                            style: TextStyle(color: Color(0XFF666666)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 30,bottom: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Save",
                              style: TextStyle(color: Color(0XFFe8dce1)),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0XFFe24d1d)),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
      ));
}
