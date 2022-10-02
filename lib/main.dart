import 'package:devffest_ilorin/core/utils/theme.dart';
import 'package:devffest_ilorin/modules/create/view_models/create_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CreateProvider>(
            create: (_) => CreateProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DevFest Ilroin',
          theme: AppTheme.light(),
          home: const App(),
        ));
  }
}
