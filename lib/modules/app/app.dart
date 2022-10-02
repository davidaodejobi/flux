import 'package:devffest_ilorin/modules/connect/connect.dart';
import 'package:devffest_ilorin/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../create/createe.dart';
import 'view_model/app_provider.dart';
import 'widgets/side_navigation_bar.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          right: 10,
        ),
        child: Row(
          children: const [
            SideNavigationBar(),
            Expanded(
              child: TheA(),
            ),
          ],
        ),
      ),
    );
  }
}

class TheA extends StatelessWidget {
  const TheA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, appProvider, child) {
        return Column(
          children: [
            if (appProvider.homeSwitch) const Home(),
            if (appProvider.connectSwitch) const Connect(),
            if (appProvider.createSwitch) const Createe(),
            if (appProvider.chatSwitch)
              Expanded(
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            if (appProvider.mapSwitch)
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              ),
          ],
        );
      },
    );
  }
}
