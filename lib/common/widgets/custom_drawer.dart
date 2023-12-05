import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/global_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: GlobalColor.backgroundColor,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
              child: const CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("assets/images/imageq.jpg"),
              ),
            ),
            Center(
              child: Text("HanaaNaassf",style:TextStyle(
                  color: Colors.black26,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500) ,),
            ),
            SizedBox(
              height: 5.w,
            ),
            buildMenuItem(
              icon: Icons.person,
              title: "Profile",
            ),
            SizedBox(
              height: 5.w,
            ),
            buildMenuItem(
              icon: Icons.settings,
              title: "Settings",
            ),
            SizedBox(
              height: 5.w,
            ),
            buildMenuItem(
              icon: Icons.logout,
              title:"LogOut",
            ),
            SizedBox(
              height: 5.w,
            ),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItem(
      {required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black87,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
