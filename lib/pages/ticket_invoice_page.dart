import 'package:flutter/material.dart';

class TicketInvoicePage extends StatelessWidget {
  const TicketInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffE1E1E1)),
                ),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8)),
                        child: Image.asset(
                          "assets/images/event2.png",
                          height: 188,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Column(
                        children: [
                          const Text(
                            "Ticket Invoice",
                            style: TextStyle(
                                fontSize: 27,
                                color: Color(0xff1D4AA7),
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 34,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 28),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Asian Festival",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 23),
                                    ),
                                    Text(
                                      "Sun 20th, Jan 2024",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Divider(
                                  height: 1,
                                  color: Color(0xffE1E1E1),
                                  thickness: 1,
                                  indent: 1,
                                  endIndent: 1,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "VIP",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "1 Ticket",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "Rp 89.250",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "VIP",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "1 Ticket",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "Rp 89.250",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "VIP",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "1 Ticket",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "Rp 89.250",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "VIP",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "1 Ticket",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "Rp 89.250",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffFFDD2D),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Rp 89.250",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 159,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: const Color(0xffE1E1E1)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 18, left: 18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Order details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 22),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Seila Salsabiela",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          "S*****a@gmail.com",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          "+62 8******90",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 82,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                      padding: const EdgeInsets.all(12),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF1D4AA7),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Barcode E-ticket",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Icon(
                                            Icons.qr_code_2_sharp,
                                            size: 36,
                                            color: Colors.white,
                                          ),
                                        ],
                                      )),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
