import 'package:devffest_ilorin/constants/helper/helper.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';
import '../../../shared/shared.dart';

class SessionFooter extends StatelessWidget {
  const SessionFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
        ),
        color: AppColor.backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              bottom: 10,
              top: 10,
            ),
            child: Text(
              'Sessions',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: AppColor.shadesOfBlue2,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://static.techspot.com/images2/news/bigimage/2021/05/2021-05-18-image-27.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
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
                                          color: Colors.white,
                                        ),
                                  ),
                                  Text(
                                    'Lorem Epsum',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
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
                                ),
                                child: Text(
                                  '10 - 11 AM',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ).glassmorphism(),
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
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
