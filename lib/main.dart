import 'package:Afterpay/screens/HomeScreen.dart';
import 'package:Afterpay/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afterpay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primary,
          errorColor: secondary,
          visualDensity: VisualDensity.standard),
      home: const HomeScreen(),
    );
  }
}
