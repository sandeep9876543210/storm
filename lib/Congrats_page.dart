import 'package:flutter/material.dart';

class Congrats_page extends StatefulWidget {
  const Congrats_page({Key? key}) : super(key: key);

  @override
  State<Congrats_page> createState() => _Congrats_pageState();
}

class _Congrats_pageState extends State<Congrats_page> {
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
                        'Application',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/bell.png',
                            width: 25,
                            height: 25,
                          )),
                    ),
                  ],
                ),
              ),
              // Image.network('https://en.pimg.jp/060/931/671/1/60931671.jpg'),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 40),
                child: Image.asset('assets/submitted.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
                child: Text(
                  'Submitted!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 40, 25),
                child: Expanded(
                  child: Text(
                    'You have completed the first step towards your international education. on of our consultants '
                    'will be in the contact with you via the app shortly.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 40, 40),
                child: Expanded(
                  child: Text(
                    'In the meantime, here are some articles on what life is like in Melbourne,Australia.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 10),
                child: Text(
                  'Related articles',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),

              Container(
                height: 180,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 200,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.ionos.com/digitalguide/fileadmin/DigitalGuide/Teaser/webinar-software-t.jpg',
                                    ),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              width: 200,
                              height: 170,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 60, 0, 0),
                            child: Icon(
                              Icons.church_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 90, 0, 0),
                            child: Text(
                              'Charles Sturt\nUniversity',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 135, 0, 0),
                            child: Text(
                              'About the school',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://www.smartcompany.com.au/wp-content/uploads/2022/01/Melbourne-CBD-Weyne-Yew.jpg?w=732',
                                  ),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 170,
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
                            padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                            child: Icon(
                              Icons.place_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 90, 0, 0),
                            child: Text(
                              'Life in Melbourn\nAustralia',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 135, 0, 0),
                            child: Text(
                              'Student Stories',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
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
