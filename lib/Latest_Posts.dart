import 'package:flutter/material.dart';

class Latest_Posts extends StatefulWidget {
  const Latest_Posts({Key? key}) : super(key: key);

  @override
  State<Latest_Posts> createState() => _Latest_PostsState();
}

class _Latest_PostsState extends State<Latest_Posts> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15,0,15,10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          Expanded(
                            child: Text(
                              '03 Dec,2020',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Telecommunication Engineering',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Row(
                          children: [
                            Image.network(
                              'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Expanded(
                              child: Text(maxLines: 3,
                                'What are the career prospects like for those who study Telecommunicating Engineering?',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('view'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              padding: EdgeInsets.fromLTRB(23, 3, 23, 3)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(15,0,15,0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          Expanded(
                            child: Text(
                              '03 Dec,2020',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Telecommunication Engineering',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Row(
                          children: [
                            Image.network(
                              'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Expanded(
                              child: Text(maxLines: 3,
                                'What are the career prospects like for  those who study Telecommunicating Engineering?',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('view'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              padding: EdgeInsets.fromLTRB(23, 3, 23, 3)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          Expanded(
                            child: Text(
                              '03 Dec,2020',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Telecommunication Engineering',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Row(
                          children: [
                            Image.network(
                              'https://m.media-amazon.com/images/I/61zdZ7RhMVL._SL1024_.jpg',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Expanded(
                              child: Text(
                                'What are the career prospects like for those who study Telecommunicating Engineering?',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('view'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              padding: EdgeInsets.fromLTRB(23, 3, 23, 3)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),


          ],
        )
      ],
    );
  }
}
