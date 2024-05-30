// ignore_for_file: must_be_immutable, unused_element

import 'package:bjbfest/pages/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bjbfest/components/footer.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({
    super.key,
    required this.event_name,
    required this.ticket_name,
    required this.available,
    required this.price,
  });
  final event_name;
  final ticket_name;
  final available;
  final price;
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final DBHelper dbHelper = DBHelper();
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

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
      'quantity': _values,
      'fullname': _fullNameController.text,
      'email': _emailController.text,
      'phone_number': _phoneController.text,
      'status': "Waiting",
    });
    _refreshOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                _formSection(context),
              ],
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          const Footer(
            height: 230,
          ),
        ],
      ),
    );
  }

  int _values = 1;

  Form _formSection(BuildContext context) {
    
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Order Details",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Full Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Color(0xffE71010),
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Text(
                "Use the name as stated on the ID/Passport",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF767676),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xffD5D8DE))),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter Fullname!";
                  }
                  return null;
                },
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Color(0xffE71010),
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Text(
                "The E-ticket will be sent to your email",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF767676),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xffD5D8DE))),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter Email!";
                  }
                  return null;
                },
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Telephone Number",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Color(0xffE71010),
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Text(
                "Use your active telephone number",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF767676),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xffD5D8DE))),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter Telephone Number!";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  Text(
                    "Quantity",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Color(0xffE71010),
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_values == 1) {
                          return;
                        }
                        _values--;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      surfaceTintColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                          color: const Color(0xFF1D4AA7),
                          borderRadius: BorderRadius.circular(4)),
                      child: const FaIcon(
                        FontAwesomeIcons.minus,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      '$_values',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_values == widget.available.toInt()) {
                          return;
                        } else {
                          _values++;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      surfaceTintColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                          color: const Color(0xFF1D4AA7),
                          borderRadius: BorderRadius.circular(4)),
                      child: const FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.circleInfo,
                      size: 26,
                      color: Color(0xff1D4AA7),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        "Make sure your data is correct !",
                        style:
                            TextStyle(color: Color(0xff1D4AA7), fontSize: 19),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                   _addOrder();
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  elevation: 0,
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFDD2D),
                      borderRadius: BorderRadius.circular(4)),
                  child: const Text(
                    'Payment',
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
          ),
        ],
      ),
    );
  }

  Container _bannerSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD5D8DE)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image.asset(
              "assets/images/event2.png",
              height: 131,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "VIP",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "1 Ticket",
                      style: TextStyle(
                        fontSize: 21,
                        color: Color(0xFF525252),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Rp 85.000",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
