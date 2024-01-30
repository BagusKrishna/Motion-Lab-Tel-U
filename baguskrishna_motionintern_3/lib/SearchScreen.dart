import 'package:flutter/material.dart';

void main(){
  runApp(SearchScreen());
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          //search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 0), //jarak
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 29, 29, 29),
                borderRadius: BorderRadius.circular(8)
              ),
              height: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 8),
                  Icon(Icons.search, color: Colors.grey[500], size: 20),
                  SizedBox(width: 8),
                  Text('Search', style: TextStyle(color: Colors.grey[500], fontSize: 13))
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
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