import 'package:bjbfest/pages/login_page.dart';
import 'package:flutter/material.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black45,
                    Colors.black45,
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: Image.asset(
                'assets/images/logobunwhite.png',
                width: 90,
                height: 90,
              ),
            ),
            Positioned(
              bottom: 110,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  const Text(
                    'Konnichiwa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'PressStart2P',
                      fontSize: 29,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    ' Minna!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'PressStart2P',
                      fontSize: 29,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'We provide the best features for easy booking of Japanese event tickets in Banjarbaru & Banjarmasin.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(height: 14),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                          ModalRoute.withName('/main'),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        surfaceTintColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xFF1D4AA7),
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        surfaceTintColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D4AA7),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          "Guest",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
