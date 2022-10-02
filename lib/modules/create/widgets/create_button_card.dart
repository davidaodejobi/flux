import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class CreateButtomCard extends StatelessWidget {
  const CreateButtomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassyCard(
      color: AppColor.shadesOfBlue2,
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
          children: [
            const Expanded(
              child: SizedBox(
                height: double.infinity,
                width: 300,
                child: GlassyCard(
                    color: Colors.white,
                    child: SizedBox(
                        // child: Placeholder(),/
                        )),
              ),
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
