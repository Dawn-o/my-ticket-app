import 'package:flutter/material.dart';

class TicketExpiredPage extends StatelessWidget {
  const TicketExpiredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 38,
              horizontal: 18,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed("ticket");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBEBEBE),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: const Text(
                            "Active",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1D4AA7),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: const Text(
                            "Expired",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 250,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/expired1.png",
                          width: 100,
                          height: 100,
                        ),
                        Image.asset(
                          "assets/images/expired2.png",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    const Text(
                      "You don’t have any expired tickets",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
