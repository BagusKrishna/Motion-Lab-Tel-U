
import 'package:flutter/material.dart';

void main(){
  runApp(ReelScreen());
}

class ReelScreen extends StatelessWidget {
  const ReelScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.fromLTRB(0, 12, 0, 0), //jarak
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, //kanan kiri
                children: [
                  Row(
                    children: [
                      
                      SizedBox(width: 16,),
                      Text(
                        'Reels',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                        ),
                        
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 32,),
                    ],
                  ),
                  Row(
                    children: [               
                      Icon(Icons.camera_alt_outlined, color: Colors.white, size: 32,),
                      SizedBox(width: 16,),
                    
                    ],
                  ),
                ],
              ),
            ),
          ),
          //kak ini masih bingung banget bikin reels huhu..
          Reels(),
          SizedBox(height: 40,),
          Reels(),
          SizedBox(height: 40,),
          Reels(),
          SizedBox(height: 40,),
          Reels(),
          
        ],
      ),
    
    );
  }
}

class Reels extends StatelessWidget {
  const Reels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 640, //biar sesuai sama tinggi masing2 hp gmn ya kak?
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/post.png"),
          fit: BoxFit.cover
        ),
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(4)
      ),
      //pake tambah icon diatas gambar
      child: Stack(
        children: [
          Column(
            children: [
              //likes
              SizedBox(height: 400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Icon(Icons.favorite_border_outlined, color: Colors.white, size: 32,),
                  SizedBox(width: 16,),
                
                ],
              ),
              //jumlah likes
              SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "42.4k",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                    
                  ),
                  SizedBox(width: 16,),
                ],
              ),
              SizedBox(height : 8,),
              //comments
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Icon(Icons.mode_comment_outlined, color: Colors.white, size: 32,),
                  SizedBox(width: 16,),
                
                ],
              ),
              //jumlah comments
              SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "1,034",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                    
                  ),
                  SizedBox(width: 16,),
                ],
              ),
              SizedBox(height : 8,),
              //share & profile kiri
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 16,),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            //color : Colors.white,
                            image:  DecorationImage(
                              image: AssetImage("assets/profile.jpg"),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        
                        ),
                        SizedBox(width: 8,),
                        Text(
                          "Cuco",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                          
                        ),
                        SizedBox(width: 8,),
                        Container(
                          height: 32,
                          width: 65,
                          decoration: BoxDecoration(
                            color : Color.fromARGB(0, 255, 255, 255),
                            
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                              ),
                              
                            ),
                          ),
                  
                        ),
                        
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.send, color: Colors.white, size: 32,),
                        SizedBox(height: 2,),
                        Text(
                          "2,742",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                          ),
                          
                        ),
                      ],
                    ),
    
                  ],
                ),
              ),
               SizedBox(width: 12,),
               Padding(padding: EdgeInsets.only(right: 16),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children : [
                      SizedBox(width: 16,),
                      Column(
                        children: [
                          Text(
                            "Semoga ga error ya kak.. reelsnya",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'billabong',
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          SizedBox(height : 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  //color : Colors.white,
                                  image:  DecorationImage(
                                    image: AssetImage("assets/profile.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              
                              
                              ),
                              SizedBox(width: 4,),
                              Text(
                                "Followed by",
                                style: TextStyle(
                                  color: const Color.fromARGB(202, 255, 255, 255),
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal
                                ),
                                
                              ),
                              SizedBox(width: 4,),
                              Text(
                                "cuco & 3 others        ",
                                style: TextStyle(
                                  color: const Color.fromARGB(202, 255, 255, 255),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500
                                ),
                                
                              ),
                            ],
                          ),
                        ],
                      
                      ),
                      Row(
                        
                        children: [
                          SizedBox(width:145,),
                          Icon(Icons.more_vert, color: Colors.white, size: 24,),
                        ],
                      ),
                    ],
                  ),
                ],
               ),
              ),
              SizedBox(height: 8,),
    
              Padding(
                padding: const EdgeInsets.only(right: 22,left: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 18,
                      width: 130,
                      //color: Color.fromARGB(154, 39, 39, 39),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(154, 39, 39, 39),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
    
                        Icon(Icons.music_note, color: Colors.white, size: 16,),
                        SizedBox(width: 4,),
                        Text(
                          "Cuco - Lover is a day  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.normal
                          ),
                          
                        ),
                      ],
                    ),
                    ),
                    
                    Row(
    
                      children: [
                        SizedBox(width: 12,),
                        Container(
                        
                          height: 24,
                          width: 24,
                          //color: Color.fromARGB(154, 39, 39, 39),
                          decoration: BoxDecoration(
                                  //color : Colors.white,
                                  image:  DecorationImage(
                                    image: AssetImage("assets/profile.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}