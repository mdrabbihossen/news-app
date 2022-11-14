import 'package:flutter/material.dart';
import 'package:news_app/views/constants/styles.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text(
              newsHead,
              style: kTitleTextStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Text(
              newsDesc,
              style: kDescTextStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Going to $newsUrl');
                },
                child: Text('Read More'),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
