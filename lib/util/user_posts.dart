import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'Chittu ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and "),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6,left: 16),
          child: RichText(
            
            text: TextSpan(style: TextStyle(color: Colors.black),
             children: [
              
              TextSpan(
                  text: 'Ammu ', 
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Just swim through these waters.I promise the other side will be truly magical.'),
            ]),
          ),
        )
      ],
    );
    ;
  }
}
