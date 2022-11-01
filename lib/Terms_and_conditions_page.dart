import 'package:flutter/material.dart';
class Terms_and_conditions_page extends StatefulWidget {
  const Terms_and_conditions_page({Key? key}) : super(key: key);

  @override
  State<Terms_and_conditions_page> createState() => _Terms_and_conditions_pageState();
}

class _Terms_and_conditions_pageState extends State<Terms_and_conditions_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFefefef),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 5),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "Application",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(Icons.close, color: Color(0xFF7c7c7c)),
                    ),
                  ],
                ),
              ),
            ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Terms and Conditions',style: const TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.fromLTRB(30,0,20,0),
                child: Text("Storm Education group pvt ltd.Maintains this site/app for education and communication only "),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30,0,20,0),
                child: Text('Registration of the User on the Website is Mandatory. The User agrees and undertakes at all times to be responsible for'
                 " maintaining the confidentiality of the password and user id, and shall be fully responsible for all activities that occur by"
             "   use of such password or user ID. Further, the User agrees not to use any other party's user ID and Password for any"
                 " purpose whatsoever regardless of any authorization from such party."""),
              ),
              SizedBox(height: 8,),
              const Padding(
                padding: EdgeInsets.fromLTRB(30,0,20,0),
                child: Text('User acknowledges that Storm overseas does not warrant that the functions contained in this site will be uninterrupted'
                  "  or error free, that defects will be corrected, or that this site or the servers that make it available are free of viruses or hello my storm users"
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30,0,20,0),
                child: Text('Registration of the User on the Website is Mandatory. The User agrees and undertakes at all times to be responsible for'
                    " maintaining the confidentiality of the password and user id, and shall be fully responsible for all activities that occur by"
                    "   use of such password or user ID. Further, the User agrees not to use any other party's user ID and Password for any"
                    " purpose whatsoever regardless of any authorization from such party."""),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30,0,20,0),
                child: Text('Registration of the User on the Website is Mandatory. The User agrees and undertakes at all times to be responsible for'
                    " maintaining the confidentiality of the password and user id, and shall be fully responsible for all activities that occur by"
                    "   use of such password or user ID. Further, the User agrees not to use any other party's user ID and Password for any"
                    " purpose whatsoever."""),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30,0,20,0),
                child: Text('Registration of the User on the Website is Mandatory. The User agrees and undertakes at all times to be responsible for'
                    " maintaining the confidentiality of the password and user id, and shall be fully responsible for all activities that occur by"
                    "   use of such password or user ID. Further, the User agrees not to use any other party's user ID and Password for any"
                    " purpose whatsoever regardless of any authorization from such party."""),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
