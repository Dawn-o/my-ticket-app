import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 18),
            child: Column(
              children: [
                _buttonSection(context),
                const SizedBox(
                  height: 52,
                ),
                _ticketSection(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _ticketSection(BuildContext context) {
    return SizedBox(
      height: 172,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffE1E1E1)),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 14, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Komikal 2",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.ticket,
                          color: Color(0xFF1D4AA7),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Presale 1, VIP",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                          padding: const EdgeInsets.all(12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1D4AA7),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            "Detail",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )),
                      onPressed: () => Navigator.of(context)
                          .pushNamed("ticket_invoice_detail"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  child: Image.asset(
                    "assets/images/event2.png",
                    fit: BoxFit.fitHeight,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buttonSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
            onPressed: () => Navigator.of(context).popAndPushNamed('ticket_expired'),
            child: Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFBEBEBE),
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
    );
  }
}
