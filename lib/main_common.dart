import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codemagic_envs/app_widget.dart';
import 'package:flutter_codemagic_envs/config_reader.dart';
import 'package:flutter_codemagic_envs/env.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: MyApp(),
    ),
  );
}
