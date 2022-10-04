import 'package:devffest_ilorin/modules/app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

import '../../shared/action_button.dart';
import '../../shared/margin.dart';
import 'view_models/create_provider.dart';
import 'widgets/create_button_card.dart';
import 'widgets/templates/template.dart';

class Createe extends StatelessWidget {
  const Createe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final createProvider = Provider.of<CreateProvider>(context);
    return Header(
      child: Expanded(
        child: SizedBox(
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  child: Row(
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
                        text: 'Export',
                        icon: const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
              const YMargin(10),
              const CreateButtomCard(),
            ],
          ),
        ),
      ),
    );
  }
}
