import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../app/widgets/header.dart';
import 'widgets/carousel.dart';
import 'widgets/session_footer.dart';
import 'widgets/staggered_grid.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Header(
      padding: 0,
      child: Expanded(
        child: ListView(
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
                const Carousel(),
              ],
            ),
            const YMargin(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HomeStaggeredGrid(),
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
            const SessionFooter(),
          ],
        ),
      ),
    );
  }
}
