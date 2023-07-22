import 'package:facebook_ui/common/app_style.dart';
import 'package:facebook_ui/common/width_spacer.dart';
import 'package:facebook_ui/views/auth/login_screen.dart';
import 'package:facebook_ui/views/home_screen/home_screen.dart';
import 'package:facebook_ui/views/notifications/notification_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
   TabController? tabController;
  @override
  void initState() {
    tabController=TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: SizedBox(
          width: width,
          child: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
          title: Container(
            height: height*0.1,width: width*0.3,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Image.asset('assets/images/app_logo.png',fit: BoxFit.fill),
          ),
          actions: [
            
            Container(
              height: height*0.1,
              width: width*0.1,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,size: 25,)))
            ),
            widthSpacer(width: width*0.04),
            Container(
              height: height*0.1,
              width: width*0.1,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.search)),)
            ),
            widthSpacer(width: width*0.04),
            Container(
              height: height*0.1,
              width: width*0.1,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.messenger)))
            ),
            widthSpacer(width: width*0.04),
            
          ],
              ),
        )),
        body: DefaultTabController(
          length: 3, child: Column(
          children: [
            SizedBox(
              height: height*0.05,
              width: double.infinity,
              child: const TabBar(tabs: [
                Icon(Icons.home,size: 35,),
                Icon(Icons.notifications,size: 35,),
                Icon(Icons.menu,size: 35,)
              ]),
            ),
             Expanded(child: TabBarView(children: [
              const HomeScreen(),
              const NotificationScreen(),
              Scaffold(
                body: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginScreen()), (route) => false);
                    },
                    child: Text("Logout",style: appStyle(
                      fw: FontWeight.bold,
                      size: 20,
                      color: Colors.red
                    ),),
                  ),
                ),
              )
            ]))
          ],
        ))
    );
  }
}
