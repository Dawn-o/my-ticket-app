import 'package:bjbfest/pages/db_helper.dart';
import 'package:bjbfest/pages/event_detail_information_page.dart';
import 'package:flutter/material.dart';

class StatusEventPage extends StatefulWidget {
  const StatusEventPage({super.key, required this.status});
  final status;
  @override
  State<StatusEventPage> createState() => _StatusEventPageState();
}

class _StatusEventPageState extends State<StatusEventPage> {
  final DBHelper dbHelper = DBHelper();
  List<Map<String, dynamic>> _tickets = [];
  var _activeEvent;

  @override
  void initState() {
    super.initState();
    _refreshTicket();
  }

  void _refreshTicket() async {
    final active = await dbHelper.activeEvent(widget.status);
    final data = await dbHelper.queryEvents(widget.status.toString());
    setState(() {
      _activeEvent = active;
      _tickets = data;
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
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _activeEvent.toString() != "0"
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text(
                                widget.status == "on"
                                    ? "Active Event"
                                    : "Expire Event",
                                style: const TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ..._tickets.map((ticket) {
                                int available1 = ticket['available_1'];
                                int available2 = ticket['available_2'] == ""
                                    ? 0
                                    : ticket['available_2'];
                                int available3 = ticket['available_3'] == ""
                                    ? 0
                                    : ticket['available_3'];
                                List<int> total = [
                                  available1,
                                  available2,
                                  available3,
                                ];
                                int available = total.reduce((a, b) => a + b);
                                return Column(
                                  children: [
                                    Container(
                                      height: 66,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color(0xffD5D8DE),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 18),
                                            child: Text(
                                              ticket['event_name'],
                                              style: const TextStyle(
                                                fontSize: 19,
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                              surfaceTintColor:
                                                  Colors.transparent,
                                              elevation: 0,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) =>
                                                          EventDetailInformationPage(
                                                            id: ticket['id'],
                                                            available:
                                                                available,
                                                          )));
                                            },
                                            child: const Icon(
                                              color: Colors.black,
                                              Icons.arrow_forward_ios_rounded,
                                              size: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                );
                              })
                            ])
                      : Text("NO DATA"),
                ],
              )),
        ],
      ),
    );
  }
}
