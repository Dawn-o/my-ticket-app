import 'package:bjbfest/pages/confirmation_detail_page.dart';
import 'package:bjbfest/pages/db_helper.dart';
import 'package:flutter/material.dart';

class ConfirmationPage extends StatefulWidget {
  ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  final DBHelper dbHelper = DBHelper();
  List<Map<String, dynamic>> _orders = [];

  void initState() {
    super.initState();
    _refreshOrders();
  }

  void _refreshOrders() async {
    final data = await dbHelper.queryAllOrders();
    setState(() {
      _orders = data;
    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ticket Confirmation",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
                ),
                const SizedBox(
                  height: 12,
                ),
                ..._orders.map((Order) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xffD9D9D9),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Order['status'],
                                  style: TextStyle(
                                    color: Order['status'] == "Declined"
                                        ? Colors.red
                                        : Order['status'] == "Confirmed"
                                            ? Colors.green
                                            : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  Order['fullname'],
                                  style: const TextStyle(
                                    fontSize: 19,
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
                                        builder: (_) => ConfirmationDetailPage(
                                              id: Order['id'],
                                              fullname: Order['fullname'],
                                              email: Order['email'],
                                              phone: Order['phone_number'],
                                              event_name: Order['event_name'],
                                              ticket_name: Order['ticket_name'],
                                              quantity: Order['quantity'],
                                            )));
                                if (shouldRefresh == true) {
                                  _refreshOrders();
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
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
