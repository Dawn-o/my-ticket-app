import 'package:bjbfest/pages/db_helper.dart';
import 'package:flutter/material.dart';

class ConfirmationDetailPage extends StatefulWidget {
  const ConfirmationDetailPage({
    super.key,
    required this.id,
    required this.fullname,
    required this.email,
    required this.phone,
    required this.event_name,
    required this.ticket_name,
    required this.quantity,
  });
  final id;
  final fullname;
  final email;
  final phone;
  final event_name;
  final ticket_name;
  final quantity;

  @override
  State<ConfirmationDetailPage> createState() => _ConfirmationDetailPageState();
}

class _ConfirmationDetailPageState extends State<ConfirmationDetailPage> {
  final DBHelper dbHelper = DBHelper();

  void _confirmOrder(int id) async {
    await dbHelper.updateOrder({
      'id': id,
      'status': "Confirmed",
    });
    Navigator.of(context).pop(true);

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Orders Confirmed')));
  }

  void _declineOrder(int id) async {
    await dbHelper.updateOrder({
      'id': id,
      'status': "Declined",
    });
    Navigator.of(context).pop(true);

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Orders Declined')));
  }

  void _deleteOrders(int id) async {
    await dbHelper.deleteOrder(id);

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Orders Declined')));
  }

  @override
  Widget build(BuildContext context) {
    Dialog declineDialog = Dialog(
      alignment: Alignment.center,
      child: Container(
        height: 250,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 34, vertical: 12),
              child: Text(
                "Decline Booking",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            const Divider(
              height: 1,
              color: Color(0xffD5D8DE),
              thickness: 1,
              indent: 1,
              endIndent: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.help_rounded,
                        size: 60,
                        color: Color(
                          0xff1D4AA7,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text(
                                "Are you sure want to decline?",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "Make sure the Booking Information is correct!",
                                style: TextStyle(
                                    color: Color(
                                      0xffA71D1D,
                                    ),
                                    fontSize: 16),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(11),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0xFF1D4AA7),
                              ),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                color: Color(0xFF1D4AA7),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            _declineOrder(widget.id);
                            Navigator.of(context).pop(true);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1D4AA7),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              "Yes, Decline",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
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
    );

    Dialog confirmDialog = Dialog(
      alignment: Alignment.center,
      child: Container(
        height: 250,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 34, vertical: 12),
              child: Text(
                "Confirm Booking",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            const Divider(
              height: 1,
              color: Color(0xffD5D8DE),
              thickness: 1,
              indent: 1,
              endIndent: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.help_rounded,
                        size: 60,
                        color: Color(
                          0xff1D4AA7,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text(
                                "Are you sure want to confirm?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "Make sure the Booking Information is correct!",
                                style: TextStyle(
                                    color: Color(
                                      0xffA71D1D,
                                    ),
                                    fontSize: 16),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(11),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0xFF1D4AA7),
                              ),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                color: Color(0xFF1D4AA7),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            _confirmOrder(widget.id);
                            Navigator.of(context).pop(true);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1D4AA7),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              "Yes, Confirm",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
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
    );

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
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xffD9D9D9),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Buyer Information",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.fullname,
                            style: const TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.email,
                            style: const TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.phone,
                            style: const TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xffD9D9D9),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ticket Information",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.event_name,
                            style: const TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.ticket_name,
                            style: const TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Quantity : ${widget.quantity.toString()}",
                            style: const TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero,
                                  surfaceTintColor: Colors.transparent,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => declineDialog);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 14),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE71010),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Text(
                                    "Decline",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero,
                                  surfaceTintColor: Colors.transparent,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => confirmDialog);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 14),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF55B938),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Text(
                                    "Confirm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
