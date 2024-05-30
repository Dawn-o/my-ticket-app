import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TicketBarcodePage extends StatelessWidget {
  const TicketBarcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 76, horizontal: 28),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffE1E1E1)),
                ),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8)),
                        child: Image.asset(
                          "assets/images/event2.png",
                          height: 188,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Text(
                          "Your barcode E-ticket",
                          style: TextStyle(
                              fontSize: 27,
                              color: Color(0xff1D4AA7),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100),
                        child: Text(
                          "Please give this barcode to the ticket attendant",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Icon(
                        Icons.qr_code_2_sharp,
                        size: 250,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.circleExclamation,
                        color: Color(0xffA71D1D),
                        size: 30,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                        "Keep your ticket confidential.",
                        style: TextStyle(
                            // ignore: unnecessary_const
                            fontSize: 17, color: const Color(0xffA71D1D)),
                      ),
                      const Text(
                        "Do not disclose or show it to anyone else.",
                        style:
                            TextStyle(fontSize: 17, color: Color(0xffA71D1D)),
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
