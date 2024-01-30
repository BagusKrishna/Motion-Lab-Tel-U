import 'package:flutter/material.dart';

void main(){
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: ListView(
        children: [
          //appbar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0), //jarak
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //kanan kiri
              children: [
                Row(
                  children: [
                    Image(image: AssetImage("assets/ig.png"), width: 120,),
                   //Text("Instagram", style: TextStyle(fontFamily: "Billabong", fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),),
                    //Image.asset("assets/ig.png", width: 20,),
                    SizedBox(width: 4,),
                    Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 20,)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.favorite_border_outlined, color: Colors.white, size: 28,),
                    SizedBox(width: 16,),
                    Icon(Icons.chat, color: Colors.white, size: 28,)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
          //stories
          Container(
            padding: EdgeInsets.only(left: 16),
            height: 105,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient( 
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                             transform: GradientRotation(1),
                            colors :  [
                            Color.fromRGBO(240, 0, 203, 100),
                            Colors.red,
                            Colors.amber,
                          ],
                        ),
                          //color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(40),
                          
                      ),
                     ),

                      Container(
                        height: 70,
                        margin: EdgeInsets.only(right: 16),
                        width: 70,
                        
                        decoration: BoxDecoration(
                          gradient: const LinearGradient( 
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                             transform: GradientRotation(1),
                            colors :  [
                            Color.fromRGBO(240, 0, 203, 100),
                            Colors.red,
                            Colors.amber,
                          ],
                        ),
                         // color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                            image: AssetImage("assets/profile.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: Text(
                      "Your Story" ,
                      style: TextStyle(
                    
                        color: Colors.white,
                        fontFamily: 'InstagramSans',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              )
              ),
          ),
          //jarak antar stories
          Container(
            height: 1,
            color: Color.fromRGBO(255, 255, 255, 0.155), //opacity
            width: double.infinity,
          ),
          //post
          Post(
            fotoprofile: "assets/profile.jpg",
            username: "cubeil",
            post: "assets/post.png",
            likes: "33,982 likes",
            caption: "Coba absen... 1 ,2 atau 3 nichhh",
            comments: "View all 1,192 comments",
            time: "1 hour ago",
          ),
          SizedBox(height: 16,),
          Post(
            fotoprofile: "assets/post2.png",
            username: "pria keren",
            post: "assets/ayam.png",
            likes: "96,234 likes",
            caption: "5 juta followers giveaway geprek !!!",
            comments: "View all 9,423 comments",
            time: "2 days ago",
          ),
          SizedBox(height: 16,),
          Post(
            fotoprofile: "assets/NON.png",
            username: "AnkMotionBGT",
            post: "assets/Congratz.png",
            likes: "314,439 likes",
            caption: "100nya dong kk ehe canda.. LUVMOTION!!",
            comments: "View all 12,252 comments",
            time: "4 weeks ago",
          ),
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.fotoprofile,
    required this.username,
    required this.post,
    required this.likes,
    required this.caption,
    required this.comments,
    required this.time,
  });

  final String fotoprofile;
  final String username;
  final String post;
  final String likes;
  final String caption;
  final String comments;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 0,), //jarak
      child: Column(
        children: [
          
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 8,),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      image: DecorationImage(
                        //foto profile
                        //"assets/profile.jpg"
                        image: AssetImage(fotoprofile),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  
                  ),
                  SizedBox(width: 12,),
                  Text(
                    username,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'InstagramSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 8,),
                  Icon(Icons.more_vert_outlined, color: Colors.white, size: 22,),
                ],
              ),
              
            ],
            
          ),
          SizedBox(height: 12,),
          //foto
          Container(
            height: 440,
            width : double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                //foto post
                //"assets/post.png"
                image: AssetImage(post),
                //scale: 0.2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          //icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite, color: const Color.fromARGB(255, 255, 0, 0), size: 24,),
                    SizedBox(width: 16,),
                    Icon(Icons.chat_bubble_outline, color: Colors.white, size: 24,),
                    SizedBox(width: 16,),
                    Icon(Icons.send_outlined, color: Colors.white, size: 24,),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.bookmark_border_outlined, color: Colors.white, size: 24,),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          //likes dll
          Row(
            
            children: [
              SizedBox(width: 8,),
              Container(
                child: Text(
                  likes,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'InstagramSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2,),
          Row(
            children: [
              SizedBox(width: 8,),
              Container(                
                child: Text(
                  username,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'InstagramSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 4,),
              Container(
                child: Text(
                  //"Coba absen... 1 ,2 atau 3 nichhh"
                  caption,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'InstagramSans',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              SizedBox(width: 8,),
              Container(
                child: Text(
                  comments,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255,255, 0.5),
                    fontFamily: 'InstagramSans',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              SizedBox(width: 8,),
              Container(
                
                child: Text(
                  time,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255,255, 0.5),
                    fontFamily: 'InstagramSans',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}