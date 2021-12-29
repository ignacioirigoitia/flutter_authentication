

import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/app/ui/routes/app_routes.dart';
import 'package:flutter_firebase_auth/app/ui/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter FA by Ignacio',
      navigatorKey: router.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      navigatorObservers: [
        router.observer
      ],
      routes: appRoutes,
    );
  }
}