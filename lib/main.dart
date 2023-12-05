import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'common/widgets/custom_nav_bar.dart';
import 'constants/global_colors.dart';
import 'features/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType)=> MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:GlobalColor.backgroundColor ,
        colorScheme: GlobalColor.mainColor,
        useMaterial3: true,
      ),
      home: const CustomNabBar(),
    ),
    );
  }
}
