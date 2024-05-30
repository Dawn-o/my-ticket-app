import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:bjbfest/components/footer.dart';
import 'package:url_launcher/url_launcher.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final Uri _url = Uri.parse('https://maps.app.goo.gl/DYLnobVkUu2tV2MX6');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _hashtagsSection(),
        _carouselSection(),
        const SizedBox(
          height: 42,
        ),
        _bestSaleSection(),
        const SizedBox(
          height: 36,
        ),
        _favoriteSection(),
        const SizedBox(
          height: 62,
        ),
        _recommendationsSection(),
        const SizedBox(
          height: 300,
        ),
        const Footer(
          height: 170,
        ),
      ],
    );
  }

  SizedBox _recommendationsSection() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              "Recommendations",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 29),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 34),
            child: Text(
              "Cosplay costume rental",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color(0xff1D4AA7)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              children: [
                const SizedBox(
                  height: 14,
                ),
                Container(
                  height: 414,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xffE1E1E1)),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(6),
                            topLeft: Radius.circular(6)),
                        child: Image.asset(
                          "assets/images/recom1.png",
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "@yayacosrent",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 21),
                            ),
                            const Text(
                              "Banjarmasin, Banjarbaru, Martapura",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff767676)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Color(0xffA71D1D),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Like",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff525252),
                                    )),
                                SizedBox(
                                  width: 34,
                                ),
                                Icon(
                                  Icons.share_sharp,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Share",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff525252),
                                    )),
                              ],
                            ),
                            const SizedBox(height: 14),
                            ElevatedButton(
                              onPressed: () {
                                _launchUrl();
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
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Text(
                                  'Rent now',
                                  style: TextStyle(
                                    color: Color(0xFF1D4AA7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
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
                  height: 28,
                ),
                Container(
                  height: 414,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xffE1E1E1)),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(6),
                            topLeft: Radius.circular(6)),
                        child: Image.asset(
                          "assets/images/recom2.png",
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Mnyauwcosu",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 21),
                            ),
                            const Text(
                              "Banjarbaru",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff767676)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Color(0xffA71D1D),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Like",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff525252),
                                    )),
                                SizedBox(
                                  width: 34,
                                ),
                                Icon(
                                  Icons.share_sharp,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Share",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff525252),
                                    )),
                              ],
                            ),
                            const SizedBox(height: 14),
                            ElevatedButton(
                              onPressed: () {},
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
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Text(
                                  'Rent now',
                                  style: TextStyle(
                                    color: Color(0xFF1D4AA7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
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
                  height: 28,
                ),
                Container(
                  height: 414,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xffE1E1E1)),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(6),
                            topLeft: Radius.circular(6)),
                        child: Image.asset(
                          "assets/images/recom2.png",
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "@syasya_lil_cosplayer",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 21),
                            ),
                            const Text(
                              "Banjarbaru",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff767676)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Color(0xffA71D1D),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Like",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff525252),
                                    )),
                                SizedBox(
                                  width: 34,
                                ),
                                Icon(
                                  Icons.share_sharp,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Share",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff525252),
                                    )),
                              ],
                            ),
                            const SizedBox(height: 14),
                            ElevatedButton(
                              onPressed: () {},
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
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Text(
                                  'Rent now',
                                  style: TextStyle(
                                    color: Color(0xFF1D4AA7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
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

  Container _favoriteSection() {
    return Container(
      height: 730,
      padding: const EdgeInsets.only(top: 52, left: 36, right: 14),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff1D4AA7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Top 3 most favorite",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 29),
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              const SizedBox(
                width: 22,
              ),
              const Text(
                "1",
                style: TextStyle(
                    fontSize: 105,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFDD2D)),
              ),
              const SizedBox(
                width: 42,
              ),
              Expanded(
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    border: Border.all(
                      color: const Color(0xff6792ED),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    child: Image.asset(
                      "assets/images/event2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              const SizedBox(
                width: 14,
              ),
              const Text(
                "2",
                style: TextStyle(
                    fontSize: 105,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFDD2D)),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    border: Border.all(
                      color: const Color(0xff6792ED),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    child: Image.asset(
                      "assets/images/event3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              const Text(
                "3",
                style: TextStyle(
                    fontSize: 105,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFDD2D)),
              ),
              const SizedBox(
                width: 28,
              ),
              Expanded(
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    border: Border.all(
                      color: const Color(0xff6792ED),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    child: Image.asset(
                      "assets/images/event1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _bestSaleSection() {
    return Container(
      padding: const EdgeInsets.only(left: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Best-Selling Event in April",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 29,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              Container(
                height: 362,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: const Color(0xffE1E1E1)),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(6),
                          topLeft: Radius.circular(6)),
                      child: Image.asset(
                        "assets/images/event1.png",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16, top: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "One Piece Fest",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 21),
                          ),
                          Text(
                            "Event dengan pembeli terbanyak di April 2024!",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff767676)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color(0xffA71D1D),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text("Like",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff525252),
                                  )),
                              SizedBox(
                                width: 34,
                              ),
                              Icon(
                                Icons.share_sharp,
                                size: 30,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text("Share",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff525252),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              Container(
                height: 342,
                margin: const EdgeInsets.symmetric(horizontal: 28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: const Color(0xffE1E1E1)),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(6),
                          topLeft: Radius.circular(6)),
                      child: Image.asset(
                        "assets/images/event2.png",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16, top: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Komikal",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 21),
                          ),
                          Text(
                            "Event favorit hampir semua otaku!",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff767676)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color(0xffA71D1D),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text("Like",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff525252),
                                  )),
                              SizedBox(
                                width: 34,
                              ),
                              Icon(
                                Icons.share_sharp,
                                size: 30,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text("Share",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff525252),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _carouselSection() {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: AnotherCarousel(
        images: [
          Image.asset(
            "assets/images/event1.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/event2.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/event3.png",
            fit: BoxFit.cover,
          ),
        ],
        dotSize: 5,
        dotBgColor: Colors.transparent,
        dotColor: const Color.fromARGB(255, 170, 170, 170),
        indicatorBgPadding: 18,
      ),
    );
  }

  Container _hashtagsSection() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
        color: Color(0xff1B4295),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xff2457C5),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xff6792ED),
                ),
              ),
              child: const Text(
                "#BJBFest",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xff2457C5),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xff6792ED),
                ),
              ),
              child: const Text(
                "#Cosplay",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xff2457C5),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xff6792ED),
                ),
              ),
              child: const Text(
                "#WibuAkut",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xff2457C5),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xff6792ED),
                ),
              ),
              child: const Text(
                "#Komikal",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xff2457C5),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xff6792ED),
                ),
              ),
              child: const Text(
                "#Naderu",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
