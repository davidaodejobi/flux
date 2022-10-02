import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class CreateSideCard extends StatelessWidget {
  const CreateSideCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Expanded(
            child: GlassyCard(
                color: AppColor.shadesOfBlue2,
                child: SizedBox(
                  child: Column(
                    children: [
                      const XMargin(10),
                      const Text(
                        'Templates',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const YMargin(10),
                      Expanded(
                        child: ListView(
                          children: const [
                            Templates(
                              title: 'Template 1',
                              description: 'This is a template',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GlassyCard(
              color: Colors.white,
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Text('Template $index'),
              ));
        });
  }
}
