import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

class CreateSideCard extends StatelessWidget {
  const CreateSideCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: double.infinity,
      child: Column(
        children: [
          GlassyCard(
              color: const Color(0xFF694221),
              child: SizedBox(
                child: Column(
                  children: const [
                    XMargin(10),
                    Text(
                      'Templates',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    YMargin(10),
                    SizedBox(
                      child: Templates(
                        title: 'Template 1',
                        description: 'This is a template',
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Templates extends StatelessWidget {
  final String title;
  final String description;
  const Templates({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.2,
        ),
        itemBuilder: (context, index) {
          return GlassyCard(
              color: Colors.white,
              child: SizedBox(
                height: 65,
                width: double.infinity,
                child: Text('Template $index'),
              ));
        });
  }
}
