// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/1172207/pexels-photo-1172207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 16,
              ),
              radius: 20.0,
              backgroundColor: Colors.blue,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                ),
                radius: 20,
                backgroundColor: Colors.blue,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  itemBuilder: (context,index) => buildStoryItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,

                ),
              ),
              SizedBox(
                height: 20,
              ),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index) => buildChatItem(),
                    separatorBuilder: (context,index) => SizedBox(
                      height: 20,
                    ),
                    itemCount: 20,
                    shrinkWrap: true,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
        width: 65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1172207/pexels-photo-1172207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 8,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 7,
                ),
              ],
            ),
            Text(
              'Yasser Mahmoud',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1172207/pexels-photo-1172207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 8,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 7,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yasser Mahmoud',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hello my name is Yasser Mahmoud ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text('02:00 am'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
