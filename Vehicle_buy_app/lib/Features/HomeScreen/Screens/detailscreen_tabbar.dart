import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:login_signup/Common/constants.dart';
import 'package:login_signup/Common/routes.dart';

class DetailScreenTabBar extends StatelessWidget {
  DetailScreenTabBar({super.key});
  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LikeButton(
                size: 32,
                circleColor: CircleColor(start: kprimary, end: kprimary),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: kprimary,
                  dotSecondaryColor: kprimary,
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: kprimary,
                    size: 32,
                  );
                },
              ),
              Container(
                height: 40,
                width: screenwidth * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kprimary)),
                      onPressed: () {},
                      child: Text('Buy Now',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      width: screenwidth,
                      height: screenheight * 0.38,
                      child: ClipRRect(
                        borderRadius: SmoothBorderRadius.only(
                            bottomLeft: SmoothRadius(
                                cornerRadius: 45, cornerSmoothing: 1),
                            bottomRight: SmoothRadius(
                                cornerRadius: 45, cornerSmoothing: 1)),
                        child: Image.asset(
                          data[2],
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                    top: MediaQuery.of(context).viewPadding.top,
                    left: MediaQuery.of(context).viewPadding.top - 40,
                    child: Container(
                      width: 40,
                      height: 40,
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                          )),
                      decoration: ShapeDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 43, 43, 43)
                                    .withOpacity(0.8),
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.8)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          shape: SmoothRectangleBorder(
                              borderRadius: SmoothBorderRadius.all(SmoothRadius(
                                  cornerRadius: 10, cornerSmoothing: 1)))),
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).viewPadding.top + 210,
                      right: MediaQuery.of(context).viewPadding.top - 15,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_purple500_outlined,
                            color: Color.fromARGB(255, 248, 223, 0),
                            size: 25,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          data[0],
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    Text(
                      'Rs. ' + data[1],
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Color.fromARGB(255, 245, 245, 245)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: kprimary),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      data[3],
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Color.fromARGB(255, 181, 181, 181)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
