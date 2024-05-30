// ignore_for_file: must_be_immutable

import 'package:bjbfest/pages/db_helper.dart';
import 'package:flutter/material.dart';

class EventDetailInformationPage extends StatelessWidget {
  EventDetailInformationPage(
      {super.key, required this.id, required this.available});
  final id;
  final available;

  @override
  Widget build(BuildContext context) {
    final DBHelper dbHelper = DBHelper();

    void _archiveEvent(int id) async {
      await dbHelper.updateTicket({
        'id': id,
        'status': "off",
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Event Archived')));
    }

    return Scaffold(
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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Event Tickets",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      height: 173,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color(0xffD9D9D9),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/online.png",
                                  scale: 1.5,
                                ),
                                const Text(
                                  "Available",
                                  style: TextStyle(
                                    color: Color(0xff6C6C6C),
                                    fontSize: 19,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 18),
                            child: Divider(
                              height: 1,
                              color: Color(0xffD9D9D9),
                              thickness: 1,
                              indent: 1,
                              endIndent: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 26),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      available.toString(),
                                      style: const TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 32,
                                    ),
                                    const Text(
                                      "Tickets",
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Color(0xff6C6C6C),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        surfaceTintColor: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffE1E1E1)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 33),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      size: 26,
                                      color: Color(0xff1D4AA7),
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Text(
                                      "Edit Event & Ticket",
                                      style: TextStyle(
                                        color: Color(0xff525252),
                                        fontSize: 19,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        surfaceTintColor: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () {
                        _archiveEvent(id);
                      },
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffE1E1E1)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 33),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.power_settings_new_rounded,
                                      color: Color(0xffE71010),
                                      size: 26,
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Archives Event",
                                      style: TextStyle(
                                        color: Color(0xff525252),
                                        fontSize: 19,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
