import 'package:flutter/material.dart';
import 'package:news_app/services/api_services.dart';
import 'package:news_app/views/home/widgets/news_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // implement initState
    super.initState();
    ApiServices.fetchNews();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) => newsContainer(
          size: size,
          imageUrl: 'https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
          newsHead: 'Bangladesh World Cup Histories',
          newsDesc: 'Bangladesh\'s major achievements include reaching the quarter-finals in 2015 ICC Cricket World Cup, being runners up in three Asia Cup (in 2012, 2016 and 2018) and in 2018 Nidahas Trophy and winning 2019 Ireland Tri-Nation Series which was Bangladesh\'s first ever multi-team ODI tournament final win.',
          newsUrl: '',
        ),
      ),
    );
  }
}
