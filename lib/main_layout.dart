// ignore_for_file: unused_import

import 'package:bjbfest/pages/confirmation_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bjbfest/main.dart';
import 'package:bjbfest/pages/detail_page.dart';
import 'package:bjbfest/pages/explore_page.dart';
import 'package:bjbfest/pages/home_page.dart';
import 'package:bjbfest/pages/profile_edit_page.dart';
import 'package:bjbfest/pages/profile_page.dart';
import 'package:bjbfest/pages/ticket_barcode_page.dart';
import 'package:bjbfest/pages/ticket_expired_page.dart';
import 'package:bjbfest/pages/ticket_invoice_detail_page.dart';
import 'package:bjbfest/pages/ticket_invoice_page.dart';
import 'package:bjbfest/pages/ticket_page.dart';
import 'package:bjbfest/pages/confirmation_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ConfirmationPage(),
    const ExplorePage(),
    const ProfilePage(),
  ];

  void _onTimeTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<bool> _onWillPop() async {
    if (_selectedIndex != 0) {
      setState(() {
        _selectedIndex = 0;
      });
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1D4AA7),
          title: Image.asset(
            "assets/images/bjbfest.png",
            height: 80,
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.search, size: 35),
            ),
          ],
          iconTheme: const IconThemeData(color: Colors.white),
          toolbarHeight: 80,
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: SizedBox(
          height: 90,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.house,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.ticket,
                ),
                label: "Ticket",
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.solidCompass,
                ),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.solidUser,
                ),
                label: "Profile",
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xff1D4AA7),
            onTap: _onTimeTapped,
          ),
        ),
      ),
    );
  }
}
