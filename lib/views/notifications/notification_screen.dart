import 'package:facebook_ui/common/app_style.dart';
import 'package:facebook_ui/common/width_spacer.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:width*0.01,vertical: height*0.001),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Notifications",style: appStyle(fw: FontWeight.bold,size: 22,color: Colors.black),),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: height*0.01),
                  child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2023/05/26/12/31/couple-8019370_1280.jpg"),
                    ),
                    widthSpacer(width: width*0.03),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            maxLines: null,
                            text: TextSpan(
                            children: [
                              TextSpan(text: "Hamza Khan ",style: appStyle(color: Colors.black,fw: FontWeight.bold,size: 17)),
                              TextSpan(text: "posted a new photo",style: appStyle(color: Colors.black,fw: FontWeight.normal,size: 16))
                            ],
                          )),
                          const Text("6 minutes ago"),
                        ],
                      ),
                    ),
                    
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.more_horiz))
                  ],
                              ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}