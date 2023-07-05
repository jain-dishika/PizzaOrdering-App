import 'package:my_app/views/splash_dart/splash_screen.dart';
import 'package:my_app/consts/consts.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: const FirebaseOptions(
      apiKey: "AIzaSyDNH7IJPYWMai2i5DcHONo3h_YDS8oBJno",
      appId: "1:820407976462:android:77c190e0dc92855729725f",
      messagingSenderId: "820407976462",
      projectId: "pizza-order-5fa77",
    ),
    ); 
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
        appBarTheme: const AppBarTheme(
          // to set app bar icons color
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
