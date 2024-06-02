import 'dart:io';
import 'package:bjbfest/components/footer.dart';
import 'package:bjbfest/pages/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Forms extends StatefulWidget {
  Forms({super.key, required this.id});
  final id;
  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final DBHelper dbHelper = DBHelper();
  List<Map<String, dynamic>> _tickets = [];

  @override
  void initState() {
    super.initState();
    _refreshTicket();
  }

  final _formkey = GlobalKey<FormState>();

  TextEditingController _eventNameController = TextEditingController();

  TextEditingController _locationController = TextEditingController();

  TextEditingController _dateController = TextEditingController();

  TextEditingController _openGateController = TextEditingController();

  TextEditingController _addressController = TextEditingController();

  TextEditingController _ticketName1Controller = TextEditingController();

  TextEditingController _prize1Controller = TextEditingController();

  TextEditingController _prize2Controller = TextEditingController();

  TextEditingController _prize3Controller = TextEditingController();

  TextEditingController _available1Controller = TextEditingController();

  TextEditingController _price1Controller = TextEditingController();

  TextEditingController _ticketName2Controller = TextEditingController();

  TextEditingController _prize21Controller = TextEditingController();

  TextEditingController _prize22Controller = TextEditingController();

  TextEditingController _prize23Controller = TextEditingController();

  TextEditingController _available2Controller = TextEditingController();

  TextEditingController _price2Controller = TextEditingController();

  TextEditingController _ticketName3Controller = TextEditingController();

  TextEditingController _prize31Controller = TextEditingController();

  TextEditingController _prize32Controller = TextEditingController();

  TextEditingController _prize33Controller = TextEditingController();

  TextEditingController _available3Controller = TextEditingController();

  TextEditingController _price3Controller = TextEditingController();

  TextEditingController _photoController = TextEditingController();

  File? _selectedImage;

  Future<void> _addTicket() async {
    await dbHelper.insertTicket({
      'event_name': _eventNameController.text,
      'location': _locationController.text,
      'date': _dateController.text,
      'open_gate': _openGateController.text,
      'address': _addressController.text,
      'ticket_name_1': _ticketName1Controller.text,
      'ticket_name_2': _ticketName2Controller.text,
      'ticket_name_3': _ticketName3Controller.text,
      'available_1': _available1Controller.text,
      'available_2': _available2Controller.text,
      'available_3': _available3Controller.text,
      'price_1': _price1Controller.text,
      'price_2': _price2Controller.text,
      'price_3': _price3Controller.text,
      'prize_1': _prize1Controller.text,
      'prize_2': _prize2Controller.text,
      'prize_3': _prize3Controller.text,
      'prize_21': _prize21Controller.text,
      'prize_22': _prize22Controller.text,
      'prize_23': _prize23Controller.text,
      'prize_31': _prize31Controller.text,
      'prize_32': _prize32Controller.text,
      'prize_33': _prize33Controller.text,
      'photo': _photoController.text,
      'status': "on",
    });
    Navigator.of(context).pop();

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Tickets Added')));
  }

  Future<void> _updateTicket(int id) async {
    await dbHelper.updateTicket({
      'id': id,
      'event_name': _eventNameController.text,
      'location': _locationController.text,
      'date': _dateController.text,
      'open_gate': _openGateController.text,
      'address': _addressController.text,
      'ticket_name_1': _ticketName1Controller.text,
      'ticket_name_2': _ticketName2Controller.text,
      'ticket_name_3': _ticketName3Controller.text,
      'available_1': _available1Controller.text,
      'available_2': _available2Controller.text,
      'available_3': _available3Controller.text,
      'price_1': _price1Controller.text,
      'price_2': _price2Controller.text,
      'price_3': _price3Controller.text,
      'prize_1': _prize1Controller.text,
      'prize_2': _prize2Controller.text,
      'prize_3': _prize3Controller.text,
      'prize_21': _prize21Controller.text,
      'prize_22': _prize22Controller.text,
      'prize_23': _prize23Controller.text,
      'prize_31': _prize31Controller.text,
      'prize_32': _prize32Controller.text,
      'prize_33': _prize33Controller.text,
      'photo': _photoController.text,
      'status': "on",
    });
    Navigator.of(context).pop(true);
    Navigator.of(context).pop(true);

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Tickets Edited')));
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
        _photoController.text = pickedFile.path;
      });
    }
  }

  void _refreshTicket() async {
    final data = await dbHelper.queryAllTickets();
    setState(() {
      _tickets = data;
    });
    _formStatus(widget.id);
  }

  void _formStatus(int? id) async {
    if (id != null) {
      final existingData =
          await _tickets.firstWhere((element) => element['id'] == id);
      _eventNameController.text = existingData['event_name'];
      _locationController.text = existingData['location'];
      _dateController.text = existingData['date'];
      _openGateController.text = existingData['open_gate'];
      _addressController.text = existingData['address'];
      _ticketName1Controller.text = existingData['ticket_name_1'];
      _ticketName2Controller.text = existingData['ticket_name_2'];
      _ticketName3Controller.text = existingData['ticket_name_3'];
      _available1Controller.text = existingData['available_1'].toString();
      _available2Controller.text = existingData['available_2'].toString();
      _available3Controller.text = existingData['available_3'].toString();
      _price1Controller.text = existingData['price_1'].toString();
      _price2Controller.text = existingData['price_2'].toString();
      _price3Controller.text = existingData['price_3'].toString();
      _prize1Controller.text = existingData['prize_1'];
      _prize2Controller.text = existingData['prize_2'];
      _prize3Controller.text = existingData['prize_3'];
      _prize21Controller.text = existingData['prize_21'];
      _prize22Controller.text = existingData['prize_22'];
      _prize23Controller.text = existingData['prize_23'];
      _prize31Controller.text = existingData['prize_31'];
      _prize32Controller.text = existingData['prize_32'];
      _prize33Controller.text = existingData['prize_33'];
      _photoController.text = existingData['photo'];
      _selectedImage = existingData['photo'] != null
          ? File(
              existingData['photo'],
            )
          : null;
    } else {
      _eventNameController.clear();
      _locationController.clear();
      _dateController.clear();
      _openGateController.clear();
      _addressController.clear();
      _ticketName1Controller.clear();
      _ticketName2Controller.clear();
      _ticketName3Controller.clear();
      _available1Controller.clear();
      _available2Controller.clear();
      _available3Controller.clear();
      _price1Controller.clear();
      _price2Controller.clear();
      _price3Controller.clear();
      _prize1Controller.clear();
      _prize2Controller.clear();
      _prize3Controller.clear();
      _prize21Controller.clear();
      _prize22Controller.clear();
      _prize23Controller.clear();
      _prize31Controller.clear();
      _prize32Controller.clear();
      _prize33Controller.clear();
      _photoController.clear();
      _selectedImage = null;
    }
  }

  Widget build(BuildContext context) {
    Dialog addDialog = Dialog(
      alignment: Alignment.center,
      child: Container(
        height: 255,
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
                "Add Event Data",
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
                                "Are you sure to add Event Data?",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "Make sure the Event Data is correct!",
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
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            _addTicket();
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1D4AA7),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              "Yes, Add",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
    Dialog editDialog = Dialog(
      alignment: Alignment.center,
      child: Container(
        height: 255,
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
                "Edit Event Data",
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
                                "Are you sure to edit Event Data?",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "Make sure the Event Data is correct!",
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
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            _updateTicket(widget.id);
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1D4AA7),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              "Yes, Edit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 28),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Create An Event",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            if (widget.id == null) {
                              showDialog(
                                  context: context, builder: (_) => addDialog);
                            } else {
                              showDialog(
                                  context: context, builder: (_) => editDialog);
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          elevation: 0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: 110,
                          decoration: BoxDecoration(
                              color: const Color(0xFF1D4AA7),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  ElevatedButton(
                    onPressed: _pickImage,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      elevation: 0,
                    ),
                    child: Container(
                      height: 160,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: _selectedImage == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/add_photo.png",
                                  scale: 1.5,
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                const Text(
                                  "Insert your banner",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  "360 x 260",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.file(
                                _selectedImage!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Event Name",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
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
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Event Name",
                    controller: _eventNameController,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
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
                      const SizedBox(
                        height: 12,
                      ),
                      textField(
                        values: "Location",
                        keyboardType: TextInputType.text,
                        controller: _locationController,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
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
                      const SizedBox(
                        height: 12,
                      ),
                      textField(
                        values: "Date",
                        keyboardType: TextInputType.text,
                        controller: _dateController,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Open Gate",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
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
                      const SizedBox(
                        height: 12,
                      ),
                      textField(
                        values: "Open Gate",
                        keyboardType: TextInputType.text,
                        controller: _openGateController,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Address",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
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
                      const SizedBox(
                        height: 12,
                      ),
                      textField(
                        values: "Address",
                        keyboardType: TextInputType.text,
                        controller: _addressController,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Ticket 1",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                              color: Color(0xffE71010),
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Ticket Name",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
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
                      const SizedBox(
                        height: 12,
                      ),
                      textField(
                        values: "Ticket Name 1",
                        keyboardType: TextInputType.text,
                        controller: _ticketName1Controller,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Prize Included",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          color: Color(0xffE71010),
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "If you want to leave it blank, just type strip(-)",
                    style: TextStyle(
                      fontSize: 19,
                      color: Color(0xFF767676),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 1",
                    keyboardType: TextInputType.text,
                    controller: _prize1Controller,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 1",
                    keyboardType: TextInputType.text,
                    controller: _prize2Controller,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 1",
                    keyboardType: TextInputType.text,
                    controller: _prize3Controller,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Available",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          color: Color(0xffE71010),
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Available 1",
                    controller: _available1Controller,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          color: Color(0xffE71010),
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Price 1",
                    controller: _price1Controller,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Ticket 2 (Optional)",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Ticket Name",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      textField(
                        values: "Ticket Name 2",
                        controller: _ticketName2Controller,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Prize Included",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 2",
                    controller: _prize21Controller,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 2",
                    controller: _prize22Controller,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 2",
                    controller: _prize23Controller,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Available",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Available 2",
                    controller: _available2Controller,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Price 2",
                    controller: _price2Controller,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Ticket 3 (Optional)",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Ticket Name",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      textField(
                        values: "Ticket Name 3",
                        controller: _ticketName3Controller,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Prize Included",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 3",
                    controller: _prize31Controller,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 3",
                    controller: _prize32Controller,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Prize 3",
                    controller: _prize33Controller,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Available",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Available 3",
                    controller: _available3Controller,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  textField(
                    values: "Price 3",
                    controller: _price3Controller,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Footer(
            height: 170,
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class textField extends StatelessWidget {
  textField(
      {super.key,
      required this.controller,
      required this.values,
      required this.keyboardType});

  final values;
  final keyboardType;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: Color(0xffD5D8DE))),
          hintText: values,
          labelText: values,
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white),
      validator: (value) {
        if (values == "Event Name" ||
            values == "Location" ||
            values == "Date" ||
            values == "Open Gate" ||
            values == "Date" ||
            values == "Address" ||
            values == "Ticket Name 1" ||
            values == "Prize 1" ||
            values == "Available 1" ||
            values == "Price 1") {
          if (value!.isEmpty) {
            return "Please enter $values!";
          }
        }
        return null;
      },
    );
  }
}
