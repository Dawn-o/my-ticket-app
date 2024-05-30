import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bjbfest/components/footer.dart';

class DetailTicketPage extends StatelessWidget {
  const DetailTicketPage({super.key});

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
          Column(
            children: [
              Image.asset(
                "assets/images/event2.png",
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Asian Festival",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Color(0xFF1D4AA7),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text("SMAN 7 Banjarmasin"),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Color(0xFF1D4AA7),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text("Sun 20th, Jan 2024"),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Color(0xFF1D4AA7),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text("Open gate : 11.00 WITA"),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        height: 1,
                        color: Color(0xffE1E1E1),
                        thickness: 1,
                        indent: 1,
                        endIndent: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapLocationDot,
                          color: Color(0xFF1D4AA7),
                          size: 25,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          "SMAN 7 Banjarmasin",
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Image.asset(
                            "assets/images/map1.png",
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          const Text(
                            "Jl. Dharma Praja V No.47, Pemurus Luar, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70249",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  onPressed: () =>
                                      Navigator.of(context).pushNamed("detail"),
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFBEBEBE),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: const Text(
                                      "Description",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFDD2D),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: const Text(
                                      "Ticket",
                                      style: TextStyle(
                                        color: Color(0xFF1D4AA7),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          SizedBox(
                            height: 282,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: const Color(0xffE1E1E1)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Presale 1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 24),
                                        ),
                                        SizedBox(height: 8),
                                        Divider(
                                          height: 1,
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          indent: 1,
                                          endIndent: 1,
                                        ),
                                        SizedBox(height: 16),
                                        Text(
                                          "Price Included :",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 Ticket",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 Doa",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Remaining Ticket : 10",
                                              style: TextStyle(
                                                  color: Color(0xffA71D1D)),
                                            ),
                                            Text(
                                              "Rp 35.000",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 38,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12),
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF1D4AA7),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: const Text(
                                                      "Purchase",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                      ),
                                                    )),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed('payment');
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          SizedBox(
                            height: 282,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: const Color(0xffE1E1E1)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "VIP",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 24),
                                        ),
                                        SizedBox(height: 8),
                                        Divider(
                                          height: 1,
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          indent: 1,
                                          endIndent: 1,
                                        ),
                                        SizedBox(height: 16),
                                        Text(
                                          "Price Included :",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 Exclusive ticket",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 VIP lounge",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 Merch totebag, poster, sticker ",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Remaining Ticket : 4",
                                              style: TextStyle(
                                                  color: Color(0xffA71D1D)),
                                            ),
                                            Text(
                                              "Rp 85.000",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 38,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12),
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF1D4AA7),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: const Text(
                                                      "Purchase",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                      ),
                                                    )),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed('payment');
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          SizedBox(
                            height: 282,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: const Color(0xffE1E1E1)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Meet n greet",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 24),
                                        ),
                                        SizedBox(height: 8),
                                        Divider(
                                          height: 1,
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          indent: 1,
                                          endIndent: 1,
                                        ),
                                        SizedBox(height: 16),
                                        Text(
                                          "Price Included :",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 Meet with Audibellave",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 Exclusive ticket",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "\u2800\u2022 VIP lounge",
                                          style: TextStyle(
                                              color: Color(0xff525252),
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Remaining Ticket : 3",
                                              style: TextStyle(
                                                  color: Color(0xffA71D1D)),
                                            ),
                                            Text(
                                              "Rp 160.000",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 38,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12),
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF1D4AA7),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: const Text(
                                                      "Purchase",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                      ),
                                                    )),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed('payment');
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              const Footer(height: 230),
            ],
          ),
        ],
      ),
    );
  }
}
