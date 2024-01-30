import 'package:flutter/material.dart';

void main(){
  runApp(AddScreen());
}

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          //search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0), //jarak
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //kanan kiri
              children: [
                Row(
                  children: [
                    Icon(Icons.close, color: Colors.white, size: 32,),
                    SizedBox(width: 20,),
                    Text(
                      'New Post',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //gambar preview
          SizedBox(height: 14,),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/100/500/500"),
                fit: BoxFit.cover
              ),
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(4)
            ),
            //pake tambah icon di pojok kiri
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Icon(Icons.data_array_rounded, color: Color.fromARGB(200, 255, 255, 255), size: 20,),
                          
                          
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Menu post
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 16, 0), //jarak
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //kanan kiri
              children: [
                Row(
                  children: [
                    
                    SizedBox(width: 20,),
                    Text(
                      'Recents',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(width: 6,),
                    Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 20,),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.my_library_add_outlined, color: Color.fromARGB(200, 255, 255, 255), size: 18,),
                    
                    ),
                    SizedBox(width: 6,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.camera_alt_outlined, color: Color.fromARGB(200, 255, 255, 255), size: 18,),
                    
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
            GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemCount: 30,
            //gambar nyari online
            itemBuilder: (context, index) => Image.network("https://picsum.photos/id/${index + 10}/500/500",),
          )
        ],
      ),
    
    );
  }
}