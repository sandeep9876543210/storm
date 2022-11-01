import 'package:flutter/material.dart';

class Explore_study_app extends StatefulWidget {
  const Explore_study_app({Key? key}) : super(key: key);

  @override
  State<Explore_study_app> createState() => _Explore_study_appState();
}

class _Explore_study_appState extends State<Explore_study_app> {
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
                  padding: const EdgeInsets.fromLTRB(15, 50, 35, 5),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(Icons.arrow_back, color: Color(0xFF7c7c7c)),
                      ),
                      Spacer(),
                      Text(
                        "Explore Study",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text('')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Application process',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The Increasingly important role of onlne education',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                'https://www.personneltoday.com/wp-content/uploads/sites/8/2020/05/MAIN-IMAGE-shutterstock_1694685139____635x357___16-9-1.jpg',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20,top: 20),
                    child: Column(
                      children: const [
                        Text(
                          'Did you what happens when you click Matter (previously known as Project CHIP or Project Connected Home over IP) aims to be an industry unifying standard for connected things at home.',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Matter (previously known as Project CHIP or Project Connected Home over IP) aims to be an industry unifying standard for connected things at home.',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          ' The objective is to specify and build an application layer which simplifies development for manufacturers and increases compatibility for consumers. In this webinar.',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Related Articles',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 190,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            width: 200,
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            'https://images.assetsdelivery.com/compings_v2/opolja/opolja1512/opolja151200011.jpg',
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Application process',
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 15,fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5,),
                                          Expanded(child: Text('Short course that can help you get a',style: TextStyle(color: Colors.black,fontSize: 15),),),
                                          SizedBox(height: 5,)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          //second item
                          Container(
                            width: 200,
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            'https://image.shutterstock.com/image-photo/young-female-graduate-against-background-260nw-1686671086.jpg',
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Application process',
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 15,fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5,),
                                          Expanded(child: Text('Short course that can help you get a',style: TextStyle(color: Colors.black,fontSize: 15),))
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          //3rd item
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
