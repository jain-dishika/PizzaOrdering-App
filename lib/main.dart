import 'package:my_app/views/splash_dart/splash_screen.dart';
import 'package:my_app/consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pizza Ordering App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // debugShowCheckedModeBanner: false,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
