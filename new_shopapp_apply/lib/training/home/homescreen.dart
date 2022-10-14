import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel {
  final String? Image;
  final String? title;
  final String? body;

  HomeModel({this.Image, this.title, this.body});
}

class HomeScreen extends StatelessWidget {
  List<HomeModel> bordinModel = [
    HomeModel(
        Image: 'assets/images/OnlineShop.png',
        body:
            'Choose Whatever the Product you wish for with the easiest way possible using new_news_app_apply',
        title: 'Explore'),
    HomeModel(
        Image: 'assets/images/Delivery.png',
        body:
            'Choose Whatever the Product you wish for with the easiest way possible using new_news_app_apply',
        title: 'Explore'),
    HomeModel(
        Image: 'assets/images/Payment.png',
        body: 'Pay with the safest way possible either by cash or credit cards',
        title: 'Make the Payment'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Home Data'),
        ],
      ),
    );
  }
}
