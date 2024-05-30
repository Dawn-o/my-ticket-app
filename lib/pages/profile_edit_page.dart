import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
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
          Container(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Edit Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 40),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFBEBEBE),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 42,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const SizedBox(
                      height: 165,
                      width: 165,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/"),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        surfaceTintColor: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0xff1D4AA7),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.mode_edit_outline_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "*",
                          style: TextStyle(
                            color: Color(0xffE71010),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xffD5D8DE))),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "*",
                          style: TextStyle(
                            color: Color(0xffE71010),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xffD5D8DE))),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.circleInfo,
                        size: 30,
                        color: Color(0xff1D4AA7),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Verify your email now",
                        style:
                            TextStyle(color: Color(0xff1D4AA7), fontSize: 19),
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
}
