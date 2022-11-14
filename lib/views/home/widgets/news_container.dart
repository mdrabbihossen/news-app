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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kButtonColor,
                  elevation: 0,
                  minimumSize: Size(double.infinity, size.height * 0.08)),
              onPressed: () {
                debugPrint('Going to $newsUrl');
              },
              child: Text(
                'Read More',
                style: kTitleTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
