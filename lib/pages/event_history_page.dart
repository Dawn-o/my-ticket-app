// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bjbfest/pages/status_event_page.dart';
import 'package:bjbfest/pages/db_helper.dart';
import 'package:flutter/material.dart';

class EventHistoryPage extends StatefulWidget {
  EventHistoryPage({super.key});
  @override
  State<EventHistoryPage> createState() => _EventHistoryPageState();
}

class _EventHistoryPageState extends State<EventHistoryPage> {
  final DBHelper dbHelper = DBHelper();
  var _activeEvent;
  var _expiredEvent;

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  void _refresh() async {
    final active = await dbHelper.activeEvent("on");
    final expired = await dbHelper.activeEvent("off");
    setState(() {
      _activeEvent = active;
      _expiredEvent = expired;
    });
  }

  @override
  Widget build(BuildContext context) {
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
              children: [
                const Text(
                  "Event History",
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
                              "Active Event",
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
                                  _activeEvent != null
                                      ? _activeEvent.toString()
                                      : "0",
                                  style: const TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  width: 32,
                                ),
                                const Text(
                                  "Event",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xff6C6C6C),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                surfaceTintColor: Colors.transparent,
                                elevation: 0,
                              ),
                              onPressed: () async {
                                bool? shouldRefresh = await Navigator.of(
                                        context)
                                    .push(MaterialPageRoute(
                                        builder: (_) => const StatusEventPage(
                                              status: "on",
                                            )));
                                if (shouldRefresh == true) {
                                  _refresh();
                                }
                              },
                              child: const Icon(
                                color: Colors.black,
                                Icons.arrow_forward_ios_rounded,
                              ),
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
                              "assets/images/expired.png",
                              scale: 1.5,
                            ),
                            const Text(
                              "Expired Event",
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
                                  _expiredEvent != null
                                      ? _expiredEvent.toString()
                                      : "0",
                                  style: const TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  width: 32,
                                ),
                                const Text(
                                  "Event",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xff6C6C6C),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                surfaceTintColor: Colors.transparent,
                                elevation: 0,
                              ),
                              onPressed: () async {
                                bool? shouldRefresh =
                                    await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => const StatusEventPage(
                                      status: "off",
                                    ),
                                  ),
                                );
                                if (shouldRefresh == true) {
                                  _refresh();
                                }
                              },
                              child: const Icon(
                                color: Colors.black,
                                Icons.arrow_forward_ios_rounded,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
