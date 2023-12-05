
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../common/widgets/custom_drawer.dart';
import '../../../common/widgets/custom_nav_bar.dart';
import '../../../constants/global_colors.dart';
import '../widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(10.h),
        child: AppBar(
          flexibleSpace: Container(
            decoration:  BoxDecoration(
              gradient:GlobalColor.appBackground,
            ),
          ),
          //leading: IconButton(onPressed: (){},icon: const Icon(Icons.menu_outlined, color: Colors.black,size: 24,),),
          title:const Text("Social " , style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold, fontStyle: FontStyle.italic),),
          centerTitle:true,
          actions:  [
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
              child: const Icon(Icons.notifications_none_outlined , ),
            ),
          ],

        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                    itemBuilder: (context,index){
                  return const PostWidget(counterViews: 2750,counterShar: 2,counterLove: 30,counterComment: 5,name: "Hanaa nassf",imgPost: "assets/images/post.jpg");
                })
            ),

          ],
        ),
      ),
      drawer:const CustomDrawer(),
    );
  }
}
