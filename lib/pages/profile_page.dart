import 'package:bjbfest/forms.dart';
import 'package:bjbfest/pages/event_history_page.dart';
import 'package:bjbfest/pages/profile_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(28),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _accountSection(context),
                _ticketSection(context),
                _bottomSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _bottomSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 18,
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffE1E1E1)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 33),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.circleQuestion,
                        color: Color(0xff5E5E5E),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Help & Feedback",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffE1E1E1)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 33),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Color(0xffE71010),
                        size: 30,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffE71010)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _ticketSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Ticket",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 18,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => EventHistoryPage()));
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              surfaceTintColor: Colors.transparent,
              elevation: 0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffE1E1E1)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 33),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidCalendarCheck,
                          color: Color(0xff1D4AA7),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Event History",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => Forms(id: null,))),
          style: ElevatedButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              surfaceTintColor: Colors.transparent,
              elevation: 0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffE1E1E1)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 33),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidCalendarPlus,
                          color: Color(0xff1D4AA7),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Create An Event",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffE1E1E1)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 33),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.wallet,
                        color: Color(0xff1D4AA7),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Bpay",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _accountSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Account",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 76,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffE1E1E1)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 55,
                      height: 55,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/"),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Seila",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 21),
                        ),
                        Text(
                          "se*******@gmail.com",
                          style: TextStyle(fontSize: 19),
                        )
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const ProfileEditPage())),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    surfaceTintColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: const Icon(
                    Icons.edit,
                    size: 26,
                    color: Color(0xff1D4AA7),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffE1E1E1)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 33),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.arrowsRotate,
                          color: Color(0xff1D4AA7),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Row(
                          children: [
                            Text(
                              "Login as",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Customers",
                              style: TextStyle(
                                  color: Color(0xff1D4AA7), fontSize: 19),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_sharp)
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffE1E1E1)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 33),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Color(0xffA71D1D),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Favorite",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 38,
        ),
      ],
    );
  }
}
