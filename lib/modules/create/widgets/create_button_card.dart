import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';
import '../../../core/models/functionality_model.dart';
import 'modify_button.dart';

class CreateButtomCard extends StatelessWidget {
  const CreateButtomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassyCard(
      color: AppColor.shadesOfBlue6,
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
          ],
        ),
      ),
    );
  }
}
