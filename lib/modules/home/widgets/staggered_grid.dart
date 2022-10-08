import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeStaggeredGrid extends StatelessWidget {
  const HomeStaggeredGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 600,
      decoration: const BoxDecoration(),
      child: GridView.custom(
        gridDelegate: SliverStairedGridDelegate(
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          startCrossAxisDirectionReversed: true,
          pattern: [
            const StairedGridTile(0.5, 1),
            const StairedGridTile(0.5, 3 / 4),
            const StairedGridTile(1.0, 10 / 4),
            const StairedGridTile(.7, 12 / 5),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 10,
          (context, index) => GestureDetector(
            onTap: () {
              showDDialog(context);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://st2.depositphotos.com/3591429/8816/i/950/depositphotos_88163656-stock-photo-cheerful-students-jumping-in-the.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.primaries[index % Colors.primaries.length],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

showDDialog(context) {
  return showModal(
    configuration: const FadeScaleTransitionConfiguration(
      transitionDuration: Duration(milliseconds: 500),
      reverseTransitionDuration: Duration(milliseconds: 300),
    ),
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text(
          'Pictures from previous events',
          textAlign: TextAlign.center,
        ),
        content: Image.network(
            'https://st2.depositphotos.com/3591429/8816/i/950/depositphotos_88163656-stock-photo-cheerful-students-jumping-in-the.jpg'),
      );
    },
  );
}
