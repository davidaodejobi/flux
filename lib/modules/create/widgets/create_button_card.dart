import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/models/functionality_model.dart';
import 'modify_button.dart';

class CreateButtomCard extends StatelessWidget {
  const CreateButtomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassyCard(
      color: AppColor.brownColor,
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              height: double.infinity,
              child: GlassyCard(
                  color: Colors.white,
                  child: SizedBox(
                      child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            for (var button in functionalities1)
                              ModifyButton(
                                icon: button.icon,
                                title: button.title,
                                onPressed: button.onPressed,
                              ),
                          ],
                        ),
                        Column(
                          children: [
                            for (var button in functionalities2)
                              ModifyButton(
                                icon: button.icon,
                                title: button.title,
                                onPressed: button.onPressed,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ))),
            ),
            const XMargin(10),
            Expanded(
              child: TextFieldWithHeader(
                headerText: '',
                hintText: 'Enter text here',
                maxLine: 4,
                height: 140,
                controller: TextEditingController(),
              ),
            ),
            const XMargin(10),
            SizedBox(
              height: double.infinity,
              child: GlassyCard(
                color: Colors.white,
                child: SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      const Center(
                        child: Text(
                          'Templates',
                        ),
                      ),
                      const YMargin(5),
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: templates.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: templates[index].onPressed,
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    color: templates[index].color,
                                    child: Center(
                                      child: Text(templates[index].title),
                                    ),
                                  ),
                                  Visibility(
                                    visible: templates[index].hasImage,
                                    child: const Positioned(
                                      child: FaIcon(
                                        FontAwesomeIcons.image,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const YMargin(10);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Template {
  final String title;
  final Color color;
  final bool hasImage;
  final VoidCallback onPressed;

  const Template({
    required this.title,
    required this.color,
    required this.hasImage,
    required this.onPressed,
  });
}

List<Template> templates = [
  Template(
      title: 'Cortana', color: Colors.teal, onPressed: () {}, hasImage: false),
  Template(
      title: 'Wakanda', color: Colors.blue, onPressed: () {}, hasImage: true),
  Template(
      title: 'Thor', color: Colors.yellow, onPressed: () {}, hasImage: false),
  Template(
      title: 'Flash', color: Colors.pink, onPressed: () {}, hasImage: true),
  Template(
      title: 'Obidient', color: Colors.grey, onPressed: () {}, hasImage: false),
];
