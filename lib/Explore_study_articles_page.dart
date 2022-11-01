import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Explore_study_articles_page extends StatefulWidget {
  const Explore_study_articles_page({Key? key}) : super(key: key);

  @override
  State<Explore_study_articles_page> createState() =>
      _Explore_study_articles_pageState();
}

class _Explore_study_articles_pageState
    extends State<Explore_study_articles_page> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });

  }

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
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
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
                              'Explore Study',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                              child: Text('   ')),
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
                                hintText: 'Search Courses',
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey[700],
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Studing in Australia',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Life Style',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        width: 175,
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.westend61.de/images/0000754769pw/young-businessman-waiting-at-metro-station-platform-using-smart-phone-UUF09021.jpg',
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
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Experince',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Why you should study in Australia',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //second item
                      Container(
                        width: 175,
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.planetware.com/photos-large/AUS/australia-tasmania-cradle-mountain-lake-st-clair.jpg',
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
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Experince',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Which city best suited for me',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
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
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 8),
                child: Text(
                  'Working in Australia',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        width: 175,
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://thumbs.dreamstime.com/b/group-young-female-male-college-students-campus-198725934.jpg',
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
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Finance',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Finding job whishlist studying',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //second item
                      Container(
                        width: 175,
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.ieee.org/content/dam/ieee-org/ieee/web/org/landing-page-carousel/ieee-continuing-education-courses-600-400.jpg',
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
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Education',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Finding the best education course',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //3rd item
                      Container(
                        width: 175,
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.tcs.com/content/dam/tcs/images/industries/education/education-Web-3840x1512.jpg',
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
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Education',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Finding the best education course',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 8),
                child: Text(
                  'Student stories: Australia',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 210,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            openpopup();
                          });
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 165,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://as2.ftcdn.net/v2/jpg/04/83/56/51/1000_F_483565126_wpepAG1CdIRn33tqGm0eBaLnOGWht2uu.jpg',
                                      ),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Container(
                              width: 165,
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
                                          Colors.black26
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Australia'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange,padding: EdgeInsets.fromLTRB(25, 1, 25, 1)),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(45, 50, 0, 60),
                                child: Icon(
                                  Icons.play_circle_outline,
                                  size: 70,
                                  color: Colors.white,
                                )),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                              child: Text(
                                'Keethan\nQUT University',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            openpopup();
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 165,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://img.freepik.com/premium-photo/always-touch-beautiful-curly-young-girl-smiling-using-tablet-isolated-blue-background_255757-7628.jpg?w=740',
                                    ),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                width: 165,
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
                                            Colors.black26
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(45, 50, 0, 60),
                                child: Icon(
                                  Icons.play_circle_outline,
                                  size: 70,
                                  color: Colors.white,
                                )),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                              child: Text(
                                'Keethan\nQUT University',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            openpopup();
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 165,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/SFI5HCF2TII6ZKJNY5R55AMMEE.jpg',
                                    ),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                width: 165,
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
                                            Colors.black26
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(45, 50, 0, 60),
                                child: Icon(
                                  Icons.play_circle_outline,
                                  size: 70,
                                  color: Colors.white,
                                )),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                              child: Text(
                                'Naveen \nMacques',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
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


  Future openpopup() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        buttonPadding: EdgeInsets.all(0),
        actions: [
          Stack(
            children: [
              Container(
                height:400,
                width: double.maxFinite,
                child: _controller.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                       child: VideoPlayer(_controller),
                )
                    : Container(),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                      }, icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,size: 30,color: Colors.grey,),),
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    }, icon: Icon(Icons.close,size: 30,color: Colors.black,),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380,left: 10,right: 10),
                child: VideoProgressIndicator(
                  _controller,
                  allowScrubbing: true,
                  colors: VideoProgressColors(
                      backgroundColor: Colors.white,
                      bufferedColor: Colors.white,
                      playedColor: Colors.black),
                ),
              )
            ],
          ),

        ],
      ));


}
