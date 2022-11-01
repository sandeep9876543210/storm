import 'package:flutter/material.dart';
import 'Latest_Posts.dart';
import 'My_Questions.dart';

class Profiles_page extends StatefulWidget {
  const Profiles_page({Key? key}) : super(key: key);

  @override
  State<Profiles_page> createState() => _Profiles_pageState();
}

class _Profiles_pageState extends State<Profiles_page> {
  String? valueChoose;
  List<String> items = [
    '+91',
    '+94',
    '+977',
    '+64',
    "+61",
    "+1",
    '+44',
    '+65',
    '+880'
  ];
  int selecttab = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFefefef),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 50, 35, 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back, color: Color(0xFF7c7c7c)),
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              openpopup();
                            });
                          },
                          child: Text(
                            'ASK QUESTION',
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0XFFe24d1d),
                            padding: EdgeInsets.all(16),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: Row(
                  children: const [
                    Icon(Icons.people_outline, size: 40),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Talk to Alumni',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 30),
                child: Expanded(
                    child: Text(
                  'Chat to alumni who have studied your interests.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                )),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 0, 5, 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selecttab = 0;
                        });
                      },
                      child: Container(
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Latest posts',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selecttab == 0
                                      ? Color(0xFFe24d1d)
                                      : Color(0xFFaaaaaa),
                                  fontFamily: 'Lorin_Regular',
                                  fontSize: 19),
                            ),
                            Divider(
                              color: selecttab == 0
                                  ? Color(0xFFe24d1d)
                                  : Color(0xFFefefef),
                              thickness: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //2nd item
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 0, 5, 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selecttab = 1;
                        });
                      },
                      child: Container(
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'My questions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selecttab == 1
                                      ? Color(0xFFe24d1d)
                                      : Color(0xFFaaaaaa),
                                  fontFamily: 'Lorin_Regular',
                                  fontSize: 19),
                            ),
                            Divider(
                              color: selecttab == 1
                                  ? Color(0xFFe24d1d)
                                  : Color(0xFFefefef),
                              thickness: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [selecttab == 0 ? Latest_Posts() : My_Questions()],
              )
            ],
          ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            }, icon: Icon(Icons.close)),
                        Spacer(),
                        Text(
                          "Filter Results",
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
                    SizedBox(height: 45,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Level of Study",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0XFF525252),
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xFFefefef)),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButton(
                                  hint: Text(
                                    "All",
                                    style: TextStyle(color: Color(0XFFb9b9b9),),
                                  ),

                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                 //   color: Colors.black,
                                  ),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  value: valueChoose,
                                  onChanged: (newValue) {
                                    valueChoose = newValue as String?;
                                  },
                                  items: items.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList()),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 36,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Select Country(s)",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0XFF525252),
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xFFefefef)),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButton(
                                  hint: Text(
                                    "All",
                                    style: TextStyle(color: Color(0XFFb9b9b9),),
                                  ),

                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    //   color: Colors.black,
                                  ),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  value: valueChoose,
                                  onChanged: (newValue) {
                                    valueChoose = newValue as String?;
                                  },
                                  items: items.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList()),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 36,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Select City(s)",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0XFF525252),
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xFFefefef)),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButton(
                                  hint: Text(
                                    "All",
                                    style: TextStyle(color: Color(0XFFb9b9b9),),
                                  ),

                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    //   color: Colors.black,
                                  ),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  value: valueChoose,
                                  onChanged: (newValue) {
                                    valueChoose = newValue as String?;
                                  },
                                  items: items.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList()),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 160,),

                    Divider(
                      color: Colors.grey[700],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 5),
                          child: Text(
                            "Clear all",
                            style: TextStyle(color:Colors.grey[500]),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,right: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "SHOW RESULTS",
                              style: TextStyle(color: Color(0XFFe8dce1)),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(20,15,20,15),
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
