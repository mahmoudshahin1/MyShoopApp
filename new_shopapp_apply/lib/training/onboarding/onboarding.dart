import 'package:flutter/material.dart';
import 'package:new_news_app_apply/modules/LoginScreen.dart';
import 'package:new_news_app_apply/remoteNetwork/cacheHelper.dart';
import 'package:new_news_app_apply/shared/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BordinModel{
  final String? Image;
  final String? title;
  final String? body;

  BordinModel({
    this.Image,
    this.title,
    this.body
  });
}
class onBoarding  extends StatelessWidget {

  final PageController onBoardController =PageController();

 List<BordinModel> bordinModel = [
   BordinModel(
     Image: 'assets/images/OnlineShop.png',
       body: 'Choose Whatever the Product you wish for with the easiest way possible using new_news_app_apply',
       title: 'Explore'

   ),
   BordinModel(
       Image: 'assets/images/Delivery.png',
       body: 'Choose Whatever the Product you wish for with the easiest way possible using new_news_app_apply',
       title: 'Explore'

   ),
   BordinModel(
       Image: 'assets/images/Payment.png',
       body: 'Pay with the safest way possible either by cash or credit cards',
       title: 'Make the Payment'),

 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      toolbarHeight:35.0 ,
      actions: [
        TextButton(onPressed: (){
          CacheHelper.saveData(key: 'onBoarding', value: false).then((value) {
            if (value){
              navigateTo(context, LoginScreen());
            }
          });
        }, child: Text('SKIB',style:TextStyle(
          fontSize: 20,
          color: defaultColor,

        ),))
      ],
    ),
    body:Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
        Expanded(child: PageView.builder(

            itemBuilder:(context, index) => bulidBoarding(bordinModel[index]),
            itemCount: bordinModel.length,
            controller:onBoardController ,

          )),
          Row(
            children: [
              SmoothPageIndicator(
                  controller: onBoardController,
                  effect:ExpandingDotsEffect(
                    activeDotColor: defaultColor,
                    dotHeight: 16.0,
                    dotWidth: 16.0,
                    dotColor: Colors.grey,
                    expansionFactor: 4,
                    spacing: 8.0
                  ) ,
                  count: bordinModel.length),
              Spacer(),



              FloatingActionButton(onPressed: (){
                onBoardController.nextPage(duration: Duration(microseconds: 800), curve: Curves.bounceIn);
              },child: Icon(Icons.arrow_forward_ios_outlined),)
            ],
          )
        ],
      ),
    ) ,
    );
  }

  Widget bulidBoarding(BordinModel? model ) => Column(
  mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(child: Image(image:AssetImage('${model!.Image}'), )),
      separator(0, 20),
      Text('${model.body}',style: TextStyle(fontSize: 20),),
      separator(0, 20),

      Text('${model.title}',style: TextStyle(fontSize: 15),),
    ],
  );
}

