import 'package:flutter/material.dart';
import 'package:bjbfest/pages/db_helper.dart';

class PaymentDetailPage extends StatefulWidget {
  const PaymentDetailPage({
    super.key,
    required this.event_name,
    required this.ticket_name,
    required this.price,
    required this.values,
    required this.fullname,
    required this.email,
    required this.phone,
  });
  final event_name;
  final ticket_name;
  final price;
  final values;
  final fullname;
  final email;
  final phone;
  @override
  State<PaymentDetailPage> createState() => _PaymentDetailPageState();
}

class _PaymentDetailPageState extends State<PaymentDetailPage> {
  final DBHelper dbHelper = DBHelper();
  @override
  void initState() {
    super.initState();
    _refreshOrders();
  }

  void _refreshOrders() async {
    setState(() {});
  }

  Future<void> _addOrder() async {
    await dbHelper.insertOrder({
      'event_name': widget.event_name,
      'ticket_name': widget.ticket_name,
      'price': widget.price,
      'quantity': widget.values,
      'fullname': widget.fullname,
      'email': widget.email,
      'phone_number': widget.phone,
      'total': widget.price * widget.values,
      'status': "Waiting",
    });
    _refreshOrders();

     Navigator.of(context).pushNamed("/main");

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Order Sent')));
  }

  @override
  Widget build(BuildContext context) {
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
                "Payment",
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
                                "Are you sure want to pay?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "Make sure the your Personal Information is correct!",
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
                            _addOrder();
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
                              "Yes, Pay!",
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
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Payment Detail',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: const Color(0xFFD5D8DE)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Buyer Information',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          widget.fullname.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color(0xFF525252),
                          ),
                        ),
                        Text(
                          widget.email.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color(0xFF525252),
                          ),
                        ),
                        Text(
                          widget.phone.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color(0xFF525252),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 20, bottom: 28),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: const Color(0xFFD5D8DE)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Detail Price',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          widget.ticket_name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.values} Ticket',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(0xFF525252),
                              ),
                            ),
                            Text(
                              widget.price.toString(),
                              style: const TextStyle(
                                fontSize: 21,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Service Fee (5%)',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              ((widget.price * widget.values) * 0.05)
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 21,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          height: 1,
                          color: const Color(0xFFD5D8DE),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 21,
                                color: Color(0xFF525252),
                              ),
                            ),
                            Text(
                              ((widget.price * widget.values) +
                                      ((widget.price * widget.values) * 0.05))
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        color: Color(0xFFA71D1D),
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Your e-ticket cannot be refunded! Incorrect data is not our responsibility.',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xFFA71D1D),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context, builder: (_) => confirmDialog);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      elevation: 0,
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFDD2D),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Text(
                        'Pay!',
                        style: TextStyle(
                          color: Color(0xFF1D4AA7),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
