import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(
      {Key? key,
      required this.name,
      required this.imgPost,
      required this.counterLove,
      required this.counterComment,
      required this.counterShar,
      required this.counterViews})
      : super(key: key);
  final String name;
  final String imgPost;
  final int counterLove;
  final int counterComment;
  final int counterShar;
  final int counterViews;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/imageq.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "3 min ago",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black38),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            width: double.infinity,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imgPost),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  counterIcon(Icons.favorite_outline, counterLove),
                  counterIcon(FontAwesomeIcons.comment, counterComment),
                  counterIcon(FontAwesomeIcons.share, counterShar),
                  const Icon(Icons.bookmark_outline_sharp, size: 24),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: "$counterViews",
                  style:  TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.italic
                  ),

                  children:[
                    TextSpan(
                      text: "views",style:  TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget counterIcon(
    IconData icon,
    int counter,
  ) {
    return Row(
      children: [
        Icon(icon, size: 20),
        SizedBox(
          width: 1.w,
        ),
        Text(
          "$counter",
          style: TextStyle(fontSize: 10.sp, color: Colors.black45),
        ),
        SizedBox(
          width: 4.w,
        ),
      ],
    );
  }
}
