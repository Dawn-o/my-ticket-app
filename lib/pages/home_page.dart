import 'dart:io';

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:bjbfest/pages/db_helper.dart';
import 'package:bjbfest/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:bjbfest/components/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DBHelper dbHelper = DBHelper();
  List<Map<String, dynamic>> _tickets = [];

  @override
  void initState() {
    super.initState();
    _refreshTicket();
  }

  void _refreshTicket() async {
    final data = await dbHelper.queryAllTickets();
    setState(() {
      _tickets = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _carouselSection(context),
        const SizedBox(
          height: 38,
        ),
        upcomingSection(context: context),
        const SizedBox(
          height: 100,
        ),
        const Footer(height: 170),
      ],
    );
  }

  Stack _carouselSection(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: AnotherCarousel(
            images: [
              ..._tickets.map((ticket) {
                return Image.file(
                  File(ticket['photo']),
                  fit: BoxFit.cover,
                );
              }),
            ],
            dotSize: 5,
            dotBgColor: Colors.transparent,
            dotColor: const Color.fromARGB(255, 170, 170, 170),
            indicatorBgPadding: 18,
          ),
        ),
        ..._tickets.map((ticket) {
          return Positioned(
            bottom: 40,
            left: MediaQuery.of(context).size.width / 2 - 90,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailPage(
                    photo: ticket['photo'],
                    event_name: ticket['event_name'],
                    location: ticket['location'],
                    date: ticket['date'],
                    open_gate: ticket['open_gate'],
                    address: ticket['address'],
                    ticket_name_1: ticket['ticket_name_1'],
                    ticket_name_2: ticket['ticket_name_2'],
                    ticket_name_3: ticket['ticket_name_3'],
                    available_1: ticket['available_1'],
                    available_2: ticket['available_2'],
                    available_3: ticket['available_3'],
                    price_1: ticket['price_1'],
                    price_2: ticket['price_2'],
                    price_3: ticket['price_3'],
                    prize_1: ticket['prize_1'],
                    prize_2: ticket['prize_2'],
                    prize_3: ticket['prize_3'],
                    prize_21: ticket['prize_21'],
                    prize_22: ticket['prize_22'],
                    prize_23: ticket['prize_23'],
                    prize_31: ticket['prize_31'],
                    prize_32: ticket['prize_32'],
                    prize_33: ticket['prize_33'],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                elevation: 0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD2D),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'Purchase now',
                  style: TextStyle(
                    color: Color(0xFF1D4AA7),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}

class upcomingSection extends StatefulWidget {
  const upcomingSection({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  State<upcomingSection> createState() => _upcomingSectionState();
}

class _upcomingSectionState extends State<upcomingSection> {
  final DBHelper dbHelper = DBHelper();
  List<Map<String, dynamic>> _tickets = [];

  @override
  void initState() {
    super.initState();
    _refreshTicket();
  }

  void _refreshTicket() async {
    final data = await dbHelper.queryAllTickets();
    setState(() {
      _tickets = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 18,
          ),
          child: const Row(
            children: [
              Text(
                "Upcoming ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 29,
                ),
              ),
              Text(
                "event",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 29,
                  color: Color(0xff1D4AA7),
                ),
              ),
            ],
          ),
        ),
        ..._tickets.map((ticket) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 20,
            ),
            child: Expanded(
              child: Container(
                height: 282,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xffE1E1E1),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 14,
                          right: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ticket['event_name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  color: Color(0xFF1D4AA7),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Expanded(
                                  child: Text(
                                    ticket['location'],
                                    style: const TextStyle(
                                      color: Color(
                                        0xff525252,
                                      ),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  color: Color(0xFF1D4AA7),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Expanded(
                                  child: Text(
                                    ticket['date'],
                                    style: const TextStyle(
                                      color: Color(
                                        0xff525252,
                                      ),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.timer,
                                  color: Color(0xFF1D4AA7),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Expanded(
                                  child: Text(
                                    "Open gate : ${ticket['open_gate']} WITA",
                                    style: const TextStyle(
                                      color: Color(
                                        0xff525252,
                                      ),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Divider(
                              height: 1,
                              color: Color(0xffE1E1E1),
                              thickness: 1,
                              indent: 1,
                              endIndent: 1,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  color: Color(0xFF1D4AA7),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Expanded(
                                  child: Text(
                                    ticket['location'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
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
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: const Text(
                                    "Purchase Ticket",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  )),
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => DetailPage(
                                    photo: ticket['photo'],
                                    event_name: ticket['event_name'],
                                    location: ticket['location'],
                                    date: ticket['date'],
                                    open_gate: ticket['open_gate'],
                                    address: ticket['address'],
                                    ticket_name_1: ticket['ticket_name_1'],
                                    ticket_name_2: ticket['ticket_name_2'],
                                    ticket_name_3: ticket['ticket_name_3'],
                                    available_1: ticket['available_1'],
                                    available_2: ticket['available_2'],
                                    available_3: ticket['available_3'],
                                    price_1: ticket['price_1'],
                                    price_2: ticket['price_2'],
                                    price_3: ticket['price_3'],
                                    prize_1: ticket['prize_1'],
                                    prize_2: ticket['prize_2'],
                                    prize_3: ticket['prize_3'],
                                    prize_21: ticket['prize_21'],
                                    prize_22: ticket['prize_22'],
                                    prize_23: ticket['prize_23'],
                                    prize_31: ticket['prize_31'],
                                    prize_32: ticket['prize_32'],
                                    prize_33: ticket['prize_33'],
                                  ),
                                ),
                              ),
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
                            bottomRight: Radius.circular(12),
                          ),
                          child: Image.file(
                            File(ticket['photo']),
                            fit: BoxFit.fitHeight,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
