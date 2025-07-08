// lib/widgets/stories_widget.dart
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final storyImages = [
      'assets/prof.jpg',
      'assets/model1.jpg',
      'assets/model2.jpg',
      'assets/model3.jpg',
      'assets/model4.jpg',
      'assets/route_prof.jpg',
    ];

    final storyNames = [
      'Create Story',
      'Messi Fan',
      'User Two',
      'Nature Guy',
      'Artist',
      'Route',
    ];

    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyImages.length,
        itemBuilder: (context, index) {
          final isCreateStory = index == 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(storyImages[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.6),
                          ],
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        storyNames[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: isCreateStory
                        ? Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(2),
                      child: const CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add, size: 20, color: Colors.white),
                      ),
                    )
                        : CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage(storyImages[index]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
