import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class ConnectSideCard extends StatelessWidget {
  const ConnectSideCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: GlassyCard(
        sigmaX: 10.0,
        sigmaY: 10.0,
        height: double.infinity,
        color: AppColor.backgroundColor,
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   stops: const [0.1, 0.5, 0.7, 0.9],
        //   colors: [
        //     AppColor.shadesOfBlue5.withOpacity(0.2),
        //     AppColor.shadesOfBlue6.withOpacity(0.3),
        //     AppColor.shadesOfBlue7.withOpacity(0.4),
        //     AppColor.shadesOfBlue8.withOpacity(0.5),
        //   ],
        // ),
        child: ListView(
          children: [
            Text(
              'Post 2 Connect',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            const YMargin(2),
            Text(
              'Post lorem yjdb audhih',
              // 'Connect with other attendees',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Divider(
              color: Colors.white,
            ),
            const YMargin(10),
            TextFieldWithHeader(
              headerText: 'Name',
              hintText: 'Enter your name',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'About you',
              hintText: 'Just a little thing about you 🤗',
              height: 120,
              maxLine: 3,
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'Tech Stack',
              hintText: 'What do you do?',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'Company',
              hintText: 'Current company or bootcamp',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'Dribbble',
              hintText: 'Your Dribbble profile',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'Github',
              hintText: 'Your Github profile',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'Behance',
              hintText: 'Your Behance profile',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'LinkedIn',
              hintText: 'Your LinkedIn profile',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'Twitter',
              hintText: 'Your Twitter profile',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            TextFieldWithHeader(
              headerText: 'Facebook',
              hintText: 'Your Facebook profile',
              controller: TextEditingController(),
            ),
            const YMargin(15),
            SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Share'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
