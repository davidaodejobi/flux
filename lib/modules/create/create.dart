import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

import '../../shared/action_button.dart';
import '../../shared/margin.dart';
import 'view_models/create_provider.dart';
import 'widgets/create_button_card.dart';
import 'widgets/create_side_card.dart';
import 'widgets/templates/template.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final createProvider = Provider.of<CreateProvider>(context);
    return Row(
      children: [
        Expanded(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(),
                  Screenshot(
                    controller: createProvider.screenshotController,
                    child: const Template1(),
                  ),
                  ActionButton(
                    onTap: () {
                      createProvider.toggleDownloadButton();
                    },
                    text: 'Download',
                    icon: const FaIcon(
                      FontAwesomeIcons.download,
                      size: 15,
                    ),
                  ),
                ],
              ),
              const YMargin(10),
              const CreateButtomCard(),
            ],
          ),
        ),
        const XMargin(30),
        const CreateSideCard(),
      ],
    );
  }
}
