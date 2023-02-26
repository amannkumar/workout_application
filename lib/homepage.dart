import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'colors.dart' as colors;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            )
          ],
        ),
      ),
    );
  }
}
