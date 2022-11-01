import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shimmer/shimmer.dart';
import 'SignUp_page.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  List listresponse=[];
  bool onloading=true;
  String data="";
  String msg=" ";
  String nmbr=" ";
  String name=" ";
  String email='';
  final myController = TextEditingController();

  Future onApicall()async{
    Response response=await get(Uri.parse('http://app.stormoverseas.com/API/StudentsAPI/MobileAvailability?MobileNo='+myController.text),);
    setState(() {
      onloading=false;
    });
    if(response.statusCode==200){
      Map mapresponse=json.decode(response.body);
      // data=mapresponse['data'];
      msg=mapresponse['msg'];
      nmbr=mapresponse['MobileNo'];
      name=mapresponse['Name'];
      email=mapresponse['Email'];
    }

  }

  @override
  void initState() {
    myController.addListener(_printLatestValue);
    // TODO: implement initState
    super.initState();
  }
  void _printLatestValue() {
    print('Second text field: ${myController.text}$data');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        backgroundColor: Color(0xFFefefef),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: Color(0xFF686868)),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Color(0xFF1c1c1c),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Color(0xFF3f3f3f),
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 45, 35, 0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: TextField(
                              controller: myController,
                              onTap: () {
                              },
                              decoration: InputDecoration(
                                hintText: 'Phone number',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                ),

                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
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
                                hintText: 'Password',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                ),
                                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 32, 35, 0),
                        child: Container(
                          width: double.maxFinite,
                          height: 50,
                          child:
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                                  primary: Color(0xFFe34d1d)),
                              onPressed: () async{
                                final SharedPreferences shared=await SharedPreferences.getInstance();
                                shared.setString('mobile_number', nmbr);
                                shared.setString('name',name );
                                shared.setString('email',email );
                                setState(() {
                                  onApicall();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                      return Signup_page();
                                    }));

                                });
                              },
                              child: const Text(
                                'LOGIN',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 16),
                              )),
                        ),
                      ),
                      SizedBox(height: 45,),

                      Text(
                        'FORGOTTEN PASSWORD',
                        style: TextStyle(
                            color: Color(0xFF343434),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),

              // CircleAvatar(child: SvgPicture.asset('assets/icons/back.svg'),radius: 20,backgroundColor: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }

}
