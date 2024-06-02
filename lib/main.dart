import 'package:bjbfest/pages/event_history_page.dart';
import 'package:bjbfest/pages/starter_page.dart';
import 'package:flutter/material.dart';
import 'package:bjbfest/pages/detail_ticket_page.dart';
import 'main_layout.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffF5F5F5),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.white,
            showUnselectedLabels: true,
            elevation: 0,
            unselectedItemColor: Color(0xff767676),
            type: BottomNavigationBarType.fixed,
          ),
          fontFamily: 'Poppins'),
      home: const StarterPage(),
      routes: {
        '/main' : (context) => const MainLayout(),
        'event_history': (context) => EventHistoryPage(),
      },
    );
  }
}
