import 'package:flutter/material.dart';
import 'Bottom_navi.dart';
import 'package:badges/badges.dart';

class Notifications_page extends StatefulWidget {
  const Notifications_page({Key? key}) : super(key: key);

  @override
  State<Notifications_page> createState() => _Notifications_pageState();
}

class _Notifications_pageState extends State<Notifications_page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
        body: Column(
          children: [
            Container(
              color: Color(0xFFffffff),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Color(0xFFffffff),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
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
                          padding: const EdgeInsets.only(top: 45),
                          child: Text(
                            'Notifications',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 30, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Bottom_navi();
                              }));
                            },
                            child:

                            Badge(
                              toAnimate: true,
                              shape: BadgeShape.circle,
                              badgeColor: Colors.red,
                              child:/* Icon(Icons.notifications,size: 30,),*/
                              Image.asset('assets/bellone.png',height: 25,width: 25,)
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 1),
                  Container(
                    color: Color(0xFFffffff),
                    child: Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 30, bottom: 10, top: 8),
                          child: Text(
                            'Mark all as read',
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[400], thickness: 1.5),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.buffalo.edu/content/dam/www/news/photos/2013/01/Justin-Kimber.jpg'),
                                radius: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Nikitha Patel',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'has approved your',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'application',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              '1h ago',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                          //2nd item
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.xxl.thumbs.canstockphoto.com/letter-j-sign-design-template-element-vector-red-icon-with-soft-shadow-on-golden-background-clipart-vector_csp44927054.jpg'),
                                radius: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Nikitha Patel',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'has approved your',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'application',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              '1h ago',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.buffalo.edu/content/dam/www/news/photos/2013/01/Justin-Kimber.jpg'),
                                radius: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'jarrod Danial',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'has sent you a',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'message',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              '21/09/21',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                          //2nd item
                          SizedBox(
                            height: 18,
                          ),

                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.westend61.de/images/0000300680pw/white-letter-a-formed-at-yellow-background-studio-shot-TKF000268.jpg'),
                                radius: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Abraham Ryan',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'has sent you a',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'message',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              '21/09/21',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.westend61.de/images/0000300680pw/white-letter-a-formed-at-yellow-background-studio-shot-TKF000268.jpg'),
                                radius: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Abraham Ryan',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'has sent you a',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'message',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              '21/09/21',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget MyDrawerlist() {
  return Expanded(child: Container(

  ));

}
