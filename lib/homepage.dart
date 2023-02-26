import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'colors.dart' as colors;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];

  @override
  void initState() {
    super.initState();
    _initData();
  }

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
      print(info.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 70, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 30,
                      color: colors.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                  color: colors.AppColor.homePageIcons,
                ),
                const Gap(10),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: colors.AppColor.homePageIcons,
                ),
                const Gap(10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: colors.AppColor.homePageIcons,
                ),
              ],
            ),
            const Gap(30),
            Row(
              children: [
                Text(
                  'Your Program',
                  style: TextStyle(
                      fontSize: 20,
                      color: colors.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20,
                    color: colors.AppColor.homePageDetail,
                  ),
                ),
                const Gap(5),
                Icon(
                  Icons.arrow_forward_outlined,
                  size: 20,
                  color: colors.AppColor.homePageDetail,
                ),
              ],
            ),
            const Gap(30),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    colors.AppColor.gradientFirst.withOpacity(0.8),
                    colors.AppColor.gradientSecond.withOpacity(0.9)
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 10),
                    blurRadius: 20,
                    color: colors.AppColor.gradientSecond.withOpacity(0.5),
                  )
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(
                    top: 25, left: 20, right: 20, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next workout',
                      style: TextStyle(
                          fontSize: 16,
                          color: colors.AppColor.homePageContainerTextSmall,
                          fontWeight: FontWeight.w700),
                    ),
                    const Gap(5),
                    Text(
                      'Legs Toning',
                      style: TextStyle(
                          fontSize: 25,
                          color: colors.AppColor.homePageContainerTextSmall,
                          fontWeight: FontWeight.w700),
                    ),
                    const Gap(5),
                    Text(
                      'and Glutes Workout',
                      style: TextStyle(
                          fontSize: 25,
                          color: colors.AppColor.homePageContainerTextSmall,
                          fontWeight: FontWeight.w700),
                    ),
                    const Gap(15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 20,
                              color: colors.AppColor.homePageContainerTextSmall,
                            ),
                            const Gap(5),
                            Text(
                              '60 min',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: colors
                                      .AppColor.homePageContainerTextSmall,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: colors.AppColor.gradientFirst,
                              offset: const Offset(4, 7),
                            ),
                          ], borderRadius: BorderRadius.circular(60)),
                          child: const Icon(
                            Icons.play_circle_fill_outlined,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              //color: Colors.blue,
              child: Stack(
                children: [
                  Container(
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage("assets/card.jpg"),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(8, 10),
                          blurRadius: 40,
                          color:
                              colors.AppColor.gradientSecond.withOpacity(0.3),
                        ),
                        BoxShadow(
                          offset: const Offset(-1, -5),
                          blurRadius: 40,
                          color:
                              colors.AppColor.gradientSecond.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 200, bottom: 30),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/figure.png'),
                      ),
                      //color: colors.AppColor.circuitsColor.withOpacity(0.3),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 150,
                    margin: const EdgeInsets.only(top: 50, left: 160),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You are doing great',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colors.AppColor.homePageDetail,
                          ),
                        ),
                        const Gap(15),
                        RichText(
                          text: TextSpan(
                              text: "Keep it up\n",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: colors.AppColor.homePagePlanColor),
                              children: const [
                                TextSpan(text: "stick to your plan")
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(10),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Area of focus',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: colors.AppColor.homePageTitle,
                ),
              ),
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                      itemCount: info.length.toDouble() ~/ 2,
                      itemBuilder: (_, i) {
                        int a = 2 * i;
                        int b = 2 * i + 1;
                        return Row(
                          children: [
                            Container(
                              height: 170,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              margin: const EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(info[a]["img"]),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: const Offset(5, 5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                    ),
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: const Offset(-5, -5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                    ),
                                  ]),
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                info[a]["title"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: colors.AppColor.homePageDetail),
                              ),
                            ),
                            Container(
                              height: 170,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              margin: const EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(info[b]["img"]),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: const Offset(5, 5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                    ),
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: const Offset(-5, -5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                    ),
                                  ]),
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                info[b]["title"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: colors.AppColor.homePageDetail),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
