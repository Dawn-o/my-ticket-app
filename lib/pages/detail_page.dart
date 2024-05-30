import 'dart:io';

import 'package:bjbfest/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bjbfest/components/footer.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  DetailPage({
    super.key,
    required this.photo,
    required this.event_name,
    required this.location,
    required this.date,
    required this.open_gate,
    required this.address,
    required this.ticket_name_1,
    required this.ticket_name_2,
    required this.ticket_name_3,
    required this.available_1,
    required this.available_2,
    required this.available_3,
    required this.price_1,
    required this.price_2,
    required this.price_3,
    required this.prize_1,
    required this.prize_2,
    required this.prize_3,
    required this.prize_21,
    required this.prize_22,
    required this.prize_23,
    required this.prize_31,
    required this.prize_32,
    required this.prize_33,
  });
  final photo;
  final event_name;
  final location;
  final date;
  final open_gate;
  final address;
  final ticket_name_1;
  final ticket_name_2;
  final ticket_name_3;
  final available_1;
  final available_2;
  final available_3;
  final price_1;
  final price_2;
  final price_3;
  final prize_1;
  final prize_2;
  final prize_3;
  final prize_21;
  final prize_22;
  final prize_23;
  final prize_31;
  final prize_32;
  final prize_33;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isPressed = true;
  final f = NumberFormat("#,##0", "en_US");

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
              Image.file(
                File(widget.photo),
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.event_name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Color(0xFF1D4AA7),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          widget.location,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Color(0xFF1D4AA7),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(widget.date),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.timer,
                          color: Color(0xFF1D4AA7),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text("Open gate : ${widget.open_gate}"),
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
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.mapLocationDot,
                          color: Color(0xFF1D4AA7),
                          size: 25,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Text(
                          widget.location,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/map1.png",
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            widget.address,
                            style: const TextStyle(fontSize: 15),
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
                                  onPressed: () => setState(() {
                                    isPressed = !isPressed;
                                  }),
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: isPressed
                                          ? const Color(0xFF1D4AA7)
                                          : const Color(0xFFBEBEBE),
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
                                  onPressed: () => setState(() {
                                    isPressed = !isPressed;
                                  }),
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: isPressed
                                          ? const Color(0xFFBEBEBE)
                                          : const Color(0xFFFFDD2D),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Text(
                                      "Ticket",
                                      style: TextStyle(
                                        color: isPressed
                                            ? Colors.white
                                            : const Color(0xFF1D4AA7),
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
                          isPressed
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Terms and Conditions",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: const Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("1. "),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Wajib menunjukkan kartu identitas yang sah (KTP/KITAS/Paspor/SIM) serta E-Voucher/E-Ticket pada saat registrasi ulang.当日、有効な身分証明書（KTP・KITAS・パスポート・運転免許証など）、およびE-Voucher/E-Ticketを、受付にご提示ください。\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("2. "),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Registrasi ulang dimulai 1 jam sebelum acara. Pintu masuk ditutup ketika acara berlangsung dan yang terlambat tidak diperbolehkan masuk.受付は開演1時間前に始まります。開演後は入場不可または入場が制限されることがあります。\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("3. "),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Anak-anak di bawah 6 tahun tidak diperbolehkan masuk ke dalam ruang pementasan.6歳未満のお子さんは入場できません。\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("4. "),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Pengunjung wajib mematikan handphone, dan perangkat elektronik lain, selama acara. Segala perekaman berbentuk audio dan video akan ditindak sesuai hukum yang berlaku. Panitia berhak melakukan langkah-langkah guna memastikan hal tersebut tidak terjadi. Pelanggar akan langsung dikeluarkan tanpa peringatan.上演中は携帯電話・スマホなどの電子機器をオフにしてください。録画・録音・撮影なども禁止されております。違反者は、場合によっては退場していただく場合があります。\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("5. "),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Dilarang membawa makanan/minuman, senjata tajam atau pun binatang peliharaan.飲食物や刃物などの危険物の持ち込みは禁止されております。ペット同伴もご遠慮ください。\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("6. "),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Tiket yang sudah dibeli tidak dapat dikembalikan/ditukar.購入済みのチケットはキャンセルおよび交換はできません。\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("7. "),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Penyelenggara berhak menolak penonton yang tidak memenuhi syarat dan ketentuan di atas.主催者は、上記の条件に反する者に対して入場をお断りする権利があります。\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    const SizedBox(
                                      height: 28,
                                    ),
                                    SizedBox(
                                      height: 282,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: const Color(0xffE1E1E1)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    widget.ticket_name_1,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 24),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  const Divider(
                                                    height: 1,
                                                    color: Color(0xffE1E1E1),
                                                    thickness: 1,
                                                    indent: 1,
                                                    endIndent: 1,
                                                  ),
                                                  const SizedBox(height: 16),
                                                  const Text(
                                                    "Prize Included :",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 18),
                                                  ),
                                                  Text(
                                                    "\u2800\u2022 ${widget.prize_1}",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff525252),
                                                        fontSize: 18),
                                                  ),
                                                  Text(
                                                    "\u2800\u2022 ${widget.prize_2}",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff525252),
                                                        fontSize: 18),
                                                  ),
                                                  widget.prize_3 != "-" &&
                                                          widget.prize_3 != ""
                                                      ? Text(
                                                          "\u2800\u2022 ${widget.prize_3}",
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xff525252),
                                                              fontSize: 18),
                                                        )
                                                      : const Text(""),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Remaining Ticket : ${widget.available_1}",
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xffA71D1D)),
                                                      ),
                                                      Text(
                                                        "Rp ${f.format(widget.price_1)}",
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                            ),
                                                            child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        12),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFF1D4AA7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3),
                                                                ),
                                                                child:
                                                                    const Text(
                                                                  "Purchase",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                                )),
                                                            onPressed: () {
                                                              Navigator.of(context).push(
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          PaymentPage(
                                                                            event_name:
                                                                                widget.event_name,
                                                                            ticket_name:
                                                                                widget.ticket_name_1,
                                                                            available:
                                                                                widget.available_1,
                                                                            price:
                                                                                widget.price_1,
                                                                          )));
                                                            }),
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
                                    widget.ticket_name_2 != ""
                                        ? Column(
                                            children: [
                                              const SizedBox(
                                                height: 28,
                                              ),
                                              SizedBox(
                                                height: 282,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xffE1E1E1)),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              widget
                                                                  .ticket_name_2,
                                                              style: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 24),
                                                            ),
                                                            const SizedBox(
                                                                height: 8),
                                                            const Divider(
                                                              height: 1,
                                                              color: Color(
                                                                  0xffE1E1E1),
                                                              thickness: 1,
                                                              indent: 1,
                                                              endIndent: 1,
                                                            ),
                                                            const SizedBox(
                                                                height: 16),
                                                            const Text(
                                                              "Prize Included :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 18),
                                                            ),
                                                            Text(
                                                              "\u2800\u2022 ${widget.prize_21}",
                                                              style: const TextStyle(
                                                                  color: Color(
                                                                      0xff525252),
                                                                  fontSize: 18),
                                                            ),
                                                            Text(
                                                              "\u2800\u2022 ${widget.prize_22}",
                                                              style: const TextStyle(
                                                                  color: Color(
                                                                      0xff525252),
                                                                  fontSize: 18),
                                                            ),
                                                            widget.prize_23 ==
                                                                        "" &&
                                                                    widget.prize_23 ==
                                                                        "-"
                                                                ? const Text("")
                                                                : Text(
                                                                    "\u2800\u2022 ${widget.prize_23}",
                                                                    style: const TextStyle(
                                                                        color: Color(
                                                                            0xff525252),
                                                                        fontSize:
                                                                            18),
                                                                  ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Remaining Ticket : ${widget.available_2}",
                                                                  style: const TextStyle(
                                                                      color: Color(
                                                                          0xffA71D1D)),
                                                                ),
                                                                Text(
                                                                  "Rp ${f.format(widget.price_2)}",
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          28),
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
                                                                      style: ElevatedButton
                                                                          .styleFrom(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                      ),
                                                                      child: Container(
                                                                          padding: const EdgeInsets.all(12),
                                                                          alignment: Alignment.center,
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                const Color(0xFF1D4AA7),
                                                                            borderRadius:
                                                                                BorderRadius.circular(3),
                                                                          ),
                                                                          child: const Text(
                                                                            "Purchase",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 16,
                                                                            ),
                                                                          )),
                                                                      onPressed: () {
                                                                        Navigator.of(context).push(MaterialPageRoute(
                                                                            builder: (_) => PaymentPage(
                                                                                  event_name: widget.event_name,
                                                                                  ticket_name: widget.ticket_name_2,
                                                                                  available: widget.available_2,
                                                                                  price: widget.price_2,
                                                                                )));
                                                                      }),
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
                                              )
                                            ],
                                          )
                                        : const Text(""),
                                    widget.ticket_name_3 != ""
                                        ? Column(
                                            children: [
                                              SizedBox(
                                                height: 282,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xffE1E1E1)),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              widget
                                                                  .ticket_name_3,
                                                              style: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 24),
                                                            ),
                                                            const SizedBox(
                                                                height: 8),
                                                            const Divider(
                                                              height: 1,
                                                              color: Color(
                                                                  0xffE1E1E1),
                                                              thickness: 1,
                                                              indent: 1,
                                                              endIndent: 1,
                                                            ),
                                                            const SizedBox(
                                                                height: 16),
                                                            const Text(
                                                              "Prize Included :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 18),
                                                            ),
                                                            Text(
                                                              "\u2800\u2022 ${widget.prize_31}",
                                                              style: const TextStyle(
                                                                  color: Color(
                                                                      0xff525252),
                                                                  fontSize: 18),
                                                            ),
                                                            Text(
                                                              "\u2800\u2022 ${widget.prize_32}",
                                                              style: const TextStyle(
                                                                  color: Color(
                                                                      0xff525252),
                                                                  fontSize: 18),
                                                            ),
                                                            widget.prize_33 ==
                                                                        "" &&
                                                                    widget.prize_33 ==
                                                                        "-"
                                                                ? const Text("")
                                                                : Text(
                                                                    "\u2800\u2022 ${widget.prize_33}",
                                                                    style: const TextStyle(
                                                                        color: Color(
                                                                            0xff525252),
                                                                        fontSize:
                                                                            18),
                                                                  ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Remaining Ticket : ${widget.available_3}",
                                                                  style: const TextStyle(
                                                                      color: Color(
                                                                          0xffA71D1D)),
                                                                ),
                                                                Text(
                                                                  "Rp ${f.format(widget.price_3)}",
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          28),
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
                                                                      style: ElevatedButton
                                                                          .styleFrom(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                      ),
                                                                      child: Container(
                                                                          padding: const EdgeInsets.all(12),
                                                                          alignment: Alignment.center,
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                const Color(0xFF1D4AA7),
                                                                            borderRadius:
                                                                                BorderRadius.circular(3),
                                                                          ),
                                                                          child: const Text(
                                                                            "Purchase",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 16,
                                                                            ),
                                                                          )),
                                                                      onPressed: () {
                                                                        Navigator.of(context).push(MaterialPageRoute(
                                                                            builder: (_) => PaymentPage(
                                                                                  event_name: widget.event_name,
                                                                                  ticket_name: widget.ticket_name_3,
                                                                                  available: widget.available_3,
                                                                                  price: widget.price_3,
                                                                                )));
                                                                      }),
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
                                          )
                                        : const Text(""),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              !isPressed
                  ? const SizedBox(
                      height: 52,
                    )
                  : const SizedBox(),
              const Footer(height: 170),
            ],
          ),
        ],
      ),
      bottomNavigationBar: isPressed
          ? BottomAppBar(
              surfaceTintColor: Colors.white,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() {
                      isPressed = !isPressed;
                    }),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFDD2D),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Text(
                        'Purchase now',
                        style: TextStyle(
                          color: Color(0xFF1D4AA7),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
