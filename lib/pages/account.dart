import 'package:flutter/material.dart';
import 'package:insta_clone/util/bubble_stories.dart';

import '../util/account_tab1.dart';
import '../util/account_tab2.dart';
import '../util/account_tab3.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //profile pic
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  //number of post,followers,following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '890',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '237',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Peach',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      'I create apps and websites',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Expanded(
                          child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text('Edit Profile'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Expanded(
                          child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text('Share Profile'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                    ),
                  ),
                  
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Icon(Icons.person_add),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                    ),
                 
                ],
              ),
            ),

            //stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 2'),
                  BubbleStories(text: 'story 3'),
                  BubbleStories(text: 'story 4'),
                  //BubbleStories(text: 'story 5'),
                ],
              ),
            ),

            TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_on)),
              Tab(icon: Icon(Icons.video_call)),
              Tab(icon: Icon(Icons.person_outline_outlined)),
            ]),
            Expanded(child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
            ]))
          ],
        ),
      ),
    );
  }
}
