import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../shared/glassy_card.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        const YMargin(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Lorem Epsum Meran\n',
                      style: Theme.of(context).textTheme.headline3,
                      children: [
                        TextSpan(
                          text: 'What is it about?',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                  // const YMargin(10),
                  Text(
                    'Duis arcu tortor suscipit In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            const XMargin(60),
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.shadesOfBlue2,
              ),
              // child: Image.network(
              //   'https://s3b.cashify.in/gpro/uploads/2021/04/28123638/M2-Apple-.jpg',
              //   fit: BoxFit.cover,
              // ),
            ),
          ],
        ),
        const YMargin(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.shadesOfBlue2,
              ),
              // child: Image.network(
              //   'https://s3b.cashify.in/gpro/uploads/2021/04/28123638/M2-Apple-.jpg',
              //   fit: BoxFit.cover,
              // ),
            ),
            const XMargin(60),
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Lorem Epsum Meran\n',
                      style: Theme.of(context).textTheme.headline3,
                      children: [
                        TextSpan(
                          text: 'What is it about?',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                  // const YMargin(10),
                  Text(
                    'Duis arcu tortor suscipit In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ],
        ),
        const YMargin(30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lorems',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
        const YMargin(10),
        SizedBox(
          height: 280,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 350,
                margin: const EdgeInsets.only(
                  right: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.shadesOfBlue2,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.shadesOfBlue8,
                            child: Icon(
                              Icons.person,
                              color: AppColor.shadesOfBlue1,
                            ),
                          ),
                          const XMargin(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lorem Epsum',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                'Lorem Epsum',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.shadesOfYellow7,
                            ),
                            child: Text(
                              'Hello World',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const GlassyCard(
                        color: Colors.white,
                        child: Text(
                          'The following ImageCodecException was thrown resolving an image codec: Failed to load network image.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                // child: Image.network(
                //   'https://s3b.cashify.in/gpro/uploads/2021/04/28123638/M2-Apple-.jpg',
                //   fit: BoxFit.cover,
                // ),
              );
            },
          ),
        ),
        const YMargin(30),
      ],
    );
  }
}
