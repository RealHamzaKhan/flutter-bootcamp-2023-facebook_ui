import 'package:facebook_ui/common/app_style.dart';
import 'package:facebook_ui/common/height_spacer.dart';
import 'package:facebook_ui/common/width_spacer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:width*0.01,vertical: height*0.01),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              pinned: false,
              flexibleSpace: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2023/05/26/12/31/couple-8019370_1280.jpg"),
                  radius: 18,
                ),
                widthSpacer(width: width*0.03),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.01),
                    // height: height*0.03,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey.withOpacity(0.2))
                  ),
                  child: Text("Whats on your mind?",style: appStyle(
                    size: 18
                  ),),
                ))
              ],
            ),
            ),
            SliverAppBar(
              expandedHeight: height*0.23,
              pinned: false,
              backgroundColor: Colors.transparent,
              flexibleSpace:  ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  if(index==0){
                   return  Container(
                    alignment: Alignment.bottomCenter,
                      height: height*0.23,
                      width: width*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2023/05/26/12/31/couple-8019370_1280.jpg"),fit: BoxFit.cover,)
              
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height*0.1,
                        width: double.infinity,
                        color: Colors.black,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.add),
                            ),
                            heightSpacer(height: height*0.01),
                            Text("Create Story",style: appStyle(color: Colors.white,fw: FontWeight.normal),)
                          ],
                        ),
                      ),
                      ),
                    );
                  }
                return Container(
              alignment: Alignment.bottomCenter,
              height: height*0.2,
              width: width*0.3,
              margin: EdgeInsets.only(left: width*0.02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2023/05/26/12/31/couple-8019370_1280.jpg"),fit: BoxFit.cover)
              ),
              child: Text("Hamza Raziq",style: appStyle(color: Colors.white,fw: FontWeight.normal),),
              );
              }),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context,index){
              return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Hamza Raziq"),
                leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2023/05/26/12/31/couple-8019370_1280.jpg"),
                radius: 18,
              ),subtitle: const Text("7 h"),
                trailing: SizedBox(
                  width:width*0.2,
                  height: height*0.1,
                  child: Row(
                    children: [
                      const Icon(Icons.more_horiz),
                      widthSpacer(width: width*0.04),
                      const Icon(Icons.cancel)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Image.network("https://cdn.pixabay.com/photo/2023/01/11/08/05/humboldt-penguin-7711121_1280.jpg"),
              ),
              
              const Divider(),
              heightSpacer(height: height*0.008),
              const Row(
                children: [
                  Text("10 likes"),
                  Spacer(),
                  Text("2 comments"),
                ],
              ),
              heightSpacer(height: height*0.008),
              const Divider(),
              heightSpacer(height: height*0.008),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text("Like")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment),
                      Text("Comment")
                    ],
                  ),
                ],
              ),
              heightSpacer(height: height*0.008),
              const Divider(),
              heightSpacer(height: height*0.008),
            ],
          );
            }))
          ],
        ),
      ),
    );
  }
}