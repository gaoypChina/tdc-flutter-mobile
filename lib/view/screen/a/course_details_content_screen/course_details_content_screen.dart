import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tdc_frontend_mobile/core/constants/color_constant.dart';
import 'package:tdc_frontend_mobile/view/screen/a/course_details_content_screen/widgets/course_lesson_video.dart';
// ignore: must_be_immutable
class CourseDetailsContentScreen extends StatelessWidget {
bool isEnrolled ;
CourseDetailsContentScreen(
  {required this.isEnrolled}
);

  @override
  Widget build(BuildContext context) {
  
    return  Padding(
      padding:EdgeInsets.only(left: 14,right: 14,top: 50).r,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CourseLessonVideo(),
          ],
        ),
          ),
    );


        
  }
}



