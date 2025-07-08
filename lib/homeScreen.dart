import 'package:flutter/material.dart';
import '../widgets/stories_widget.dart';
import '../widgets/post_widget.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Facebook',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: const [
          Icon(Icons.add_circle_outline, color: Colors.black),
          SizedBox(width: 12),
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 12),
          Icon(Icons.message_outlined, color: Colors.black),
          SizedBox(width: 12),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, color: Colors.blue),
                Icon(Icons.live_tv_outlined, color: Colors.grey),
                Icon(Icons.storefront_outlined, color: Colors.grey),
                Icon(Icons.group_outlined, color: Colors.grey),
                Icon(Icons.notifications_none, color: Colors.grey),
                CircleAvatar(radius: 12, backgroundImage: AssetImage('assets/prof.png')),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            StoriesWidget(),
            SizedBox(height: 10),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}