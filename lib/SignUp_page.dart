import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'OTP_page.dart';
import 'package:http/http.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  State<Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {
  final namecontroller=TextEditingController();
  final emailcontroller=TextEditingController();
  final mobilecontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // color: Color(0xFFefefef),
        backgroundColor: Color(0xFFefefef),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          setState(() {
                            setApicall();
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return OTP_page();
                            }));
                          });

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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(height: 110,),
                  Center(
                    child: Text('Create your account',  style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold),),
                  ),
                SizedBox(height: 25,),
                Padding(
                  padding: EdgeInsets.fromLTRB(35,0,35,0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Name',style:TextStyle(color: Colors.black,fontSize: 17),),
                      ),
                      SizedBox(height: 8,),

                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: TextField(
                            controller: namecontroller,
                            onTap: () {},
                            decoration: InputDecoration(
                              hintText: 'Anil',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Email',style:TextStyle(color: Colors.black,fontSize: 17),),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: TextField(
                            controller: emailcontroller,
                            onTap: () {},
                            decoration: InputDecoration(
                              hintText: 'Anil ',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Password',style:TextStyle(color: Colors.black,fontSize: 17),),
                      ),
                      SizedBox(height: 8,),
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
                              hintText: 'Password ',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Mobile number',style:TextStyle(color: Colors.black,fontSize: 17),),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: TextField(
                            controller: mobilecontroller,
                            onTap: () {},
                            decoration: InputDecoration(
                              hintText: 'Mobile number ',
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
                ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future setApicall()async{
Response response=await post(Uri.parse('http://app.stormoverseas.com/API/StudentsAPI/Add'),body: {
  'FullName':namecontroller.text,
  'Email':emailcontroller.text,
  'MobileNo':mobilecontroller.text,
  'Password':'123456',
  'APPType':'androidweb',
  'CourseLeadsTo':'""'
});
print('response post : '+response.body);
  }
}
