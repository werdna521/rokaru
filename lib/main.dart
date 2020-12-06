import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rokaru/screens/home_screen.dart';
import 'package:rokaru/screens/store_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(new App()));
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffe4b65c),
        backgroundColor: Color(0xff8BA3AA),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        StoreScreen.id: (context) => StoreScreen(),
      },
    );
  }
}
