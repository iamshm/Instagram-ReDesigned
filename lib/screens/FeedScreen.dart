import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf0f6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          //head
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //instagram text
                Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontWeight: FontWeight.w500,
                    fontSize: 40.0,
                  ),
                ),
                //head icons
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.live_tv),
                      iconSize: 30.0,
                      onPressed: () => print('IGTV'),
                    ),
                    SizedBox(width: 16.0),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Icons.send),
                        iconSize: 30.0,
                        onPressed: () => print('Send'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //stories
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(width: 10.0);
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          _buildPost(0),
          _buildPost(1),
          // _buildPost(2),
          //posts
        ],
      ),
    );
  }
}

Widget _buildPost(int index) {
  return Padding(
    //cardboard padding
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 5,
    ),
    //Cardboard
    child: Container(
      width: double.infinity,
      height: 560,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        children: <Widget>[
          //post padding
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: <Widget>[
                //post header
                ListTile(
                  leading: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl),
                          fit: BoxFit.fitWidth),
                    ),
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image(
                          height: 50.0,
                          width: 50.0,
                          image: AssetImage(posts[index].authorImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    posts[index].authorName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(posts[index].timeAgo),
                  trailing: IconButton(
                    icon: Icon(Icons.more_horiz),
                    color: Colors.black,
                    onPressed: () => print('More'),
                  ),
                ),
                //post i.e. image
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 5),
                        blurRadius: 8.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(posts[index].imageUrl),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                //likes,comments n bookmark
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //row for like n cooments
                      Row(
                        children: <Widget>[
                          //likes
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.favorite_border),
                                iconSize: 30.0,
                                onPressed: () => print('Liked'),
                              ),
                              Text(
                                '2,534',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          //comments
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.chat_bubble_outline),
                                iconSize: 30.0,
                                onPressed: () => print('comments'),
                              ),
                              Text(
                                '231',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark_border),
                        iconSize: 30.0,
                        onPressed: () => print('Bookmarked'),
                      ),
                    ],
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
