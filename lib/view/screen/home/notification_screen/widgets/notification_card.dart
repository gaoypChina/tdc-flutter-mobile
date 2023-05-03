import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tdc_frontend_mobile/core/constants/color_constant.dart';
import 'package:tdc_frontend_mobile/core/constants/image_constant.dart';
import 'package:tdc_frontend_mobile/model/news_feed.dart';
import 'package:tdc_frontend_mobile/model/notification.dart';
import 'package:timeago/timeago.dart' as timeago;

// ignore: must_be_immutable
class NotificationCard extends StatelessWidget {
  final Notifications notifications;

  const NotificationCard({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(60),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
          //set border radius more than 50% of height and width to make circle
        ),
        elevation: 5,
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.all(30),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(''),
                    radius: 120.r,
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(850),
                    child: Padding(
                      padding: REdgeInsets.all(30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            notifications.title!,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(
                                60,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 5.h,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            notifications.description!,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(
                                40,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 5.h,
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            timeago.format(notifications.publishedAt!),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.bluegray500,
                              fontSize: ScreenUtil().setSp(
                                40,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.network(''),
          ],
        ),
      ),
    );
  }
}
