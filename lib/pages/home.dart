import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Search_Section(),
          const SizedBox(
            height: 40,
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Children",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )),
                  Container(
                    color: Colors.red,
                    height: 150,
                  )
            ],
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column Search_Section() {
    return Column(children: [
      Container(
        height: 50,
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.15),
              blurRadius: 40,
              spreadRadius: 0.0)
        ]),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Serach Anything",
              hintStyle: const TextStyle(color: Color(0xff94a3b8)),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15),
              suffixIcon: SizedBox(
                width: 60,

                // color: Colors.deepOrangeAccent,
                child: Row(children: [
                  const VerticalDivider(
                    color: Color(0xffcbd5e1),
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: SvgPicture.asset(
                      "assets/icons/Filter.svg",
                      // ignore: deprecated_member_use
                      color: const Color(0xffcbd5e1),
                    ),
                  )
                ]),
              ),
              prefixIcon: Container(
                width: 50,
                padding: const EdgeInsets.all(16),
                child: SvgPicture.asset(
                  "assets/icons/Search__Icon.svg",
                  // ignore: deprecated_member_use
                  color: const Color(0xffcbd5e1),
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
        ),
      )
    ]);
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        "Breack Fast",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          print("hello");
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/icons/BackButton.svg",
            width: 20,
            height: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 37,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/ThreeDot.svg",
              width: 20,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}
