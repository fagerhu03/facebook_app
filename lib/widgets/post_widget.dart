// lib/widgets/post_widget.dart
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/prof.jpg'),
                ),
                title: const Text('Route'),
                subtitle: const Text('1 hr ago'),
                trailing: IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              ),
              Image.asset('assets/route_post.jpg', fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up_alt_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_border)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
