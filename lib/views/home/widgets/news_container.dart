import 'package:flutter/material.dart';

Widget newsContainer({
  required Size size,
  required String imageUrl,
  required String newsHead,
  required String newsDesc,
  required String newsUrl,
}) =>
    Container(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Text(newsHead),
          Text(newsDesc),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                debugPrint('Going to $newsUrl');
              },
              child: Text('Go'),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
