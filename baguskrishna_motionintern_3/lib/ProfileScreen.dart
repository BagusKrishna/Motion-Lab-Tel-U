import 'package:flutter/material.dart';

void main(){
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    Text("cubeil", style: TextStyle(color: Colors.white, fontFamily: 'inter', fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(width: 4,),
                    Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 20,)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.add_box_outlined, color: Colors.white, size: 28,),
                    SizedBox(width: 16,),
                    Icon(Icons.menu_rounded, color: Colors.white, size: 28,)
                  ],
                ),
              ],
            ),
          ),
          //profile 
          SizedBox(height: 16,), 
          Row(
            children: [
              SizedBox(width: 16,),
              //profile picture
              profilepic(
                rmargin: 0,
                height: 85,
                width: 85,
                lmargin: 0,
              ),
              //profile info
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoProfile(
                      title: "Posts",
                      total: "10",
                    ),
                    InfoProfile(
                      title: "Followers",
                      total: "1.2M",
                    ),
                    InfoProfile(
                      title: "Following",
                      total: "1",
                    ),
                  ],
                ), 
              ),
            ],
          ),
          //name & edit profile
          SizedBox(height: 8,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bagus Krishna",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'InstagramSans', 
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 2),
               Text(
                  "Follow dong gess :(( ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'InstagramSans', 
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 0.001),
                Text(
                  "@telkomuniversity",
                  style: TextStyle(
                    color: Color.fromARGB(255, 158, 211, 255),
                    fontFamily: 'InstagramSans',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 16,),
                //edit profile
                Row(
                  children: [
                    Container(
                      height: 32,
                      width: 322,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(38, 38, 38, 100),
                        
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'InstagramSans',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(38, 38, 38, 100),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Icon(Icons.person_add_outlined, 
                      color: Colors.white, size: 16,),
                    ),
                  ],
                ),
              ],
            ),
            //stories
            
          ),
          SizedBox(height : 16,),
          //stories
          Container(
            padding: EdgeInsets.only(left: 16),
            height: 90,
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
                        height: 61,
                        width: 61,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(40),
                          
                      ),
                     ),

                      Container(
                        height: 59,
                        margin: EdgeInsets.only(right: 16),
                        width: 59,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/id/${index + 544}/500/500",)
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
                      "Travel ${index+1}" ,
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
          //row icon
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.grid_on_outlined, 
                  color: Colors.white, size: 28,
                  ),
                  selectedIcon: Icon(Icons.grid_on_outlined, 
                    color: Colors.white, size: 28,
                  ) ,
                ),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.video_collection_outlined, 
                  color: Colors.grey[1000], size: 28,
                  ),
                  selectedIcon: Icon(Icons.video_collection, 
                    color: Colors.white, size: 28,
                  ) ,
                ),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.person_pin_outlined, 
                  color: Colors.grey[1000], size: 28,
                  ),
                  selectedIcon: Icon(Icons.person_pin_rounded, 
                    color: Colors.white, size: 28,
                  ) ,
                ),
              ],
            ),
          ),
          //post
          SizedBox(height: 11,),
          GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: 10,
          itemBuilder: (context, index) => Image.network("https://picsum.photos/id/${index + 544}/500/500",),
         )
        ], 
      ),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({
    super.key,
    required this.title,
    required this.total,
  });
  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(total, style: TextStyle(color: Colors.white, fontFamily: 'inter', fontSize: 18, fontWeight: FontWeight.w800),),
        //SizedBox(height: 1,),
        Text(title, style: TextStyle(color: Colors.white, fontFamily: 'inter', fontSize: 12, fontWeight: FontWeight.normal),),
      ],
    );
  }
}

class profilepic extends StatelessWidget {
  const profilepic({
    super.key,
    required this.height,
    required this.width,
    required this.rmargin,
    required this.lmargin,
  });
  final double height;
  final double width;
  final double rmargin;
  final double lmargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.only(left: lmargin),
      width: width,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          
          Container(
            margin: EdgeInsets.only(right: rmargin),
            decoration: BoxDecoration(
              //color : Colors.red,
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
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(right: rmargin),
            decoration: BoxDecoration(
              //color : Colors.white,
              image:  DecorationImage(
                image: AssetImage("assets/profile.jpg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ],
      ),
      
    );
  }
}