import 'package:flutter/material.dart';
import 'package:passwordmanager/widgets/app_bar.dart';
import 'package:passwordmanager/widgets/app_large_text.dart';
import 'package:passwordmanager/widgets/app_text.dart';

import '../widgets/cards.dart';
import '../widgets/search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.white
          : const Color.fromARGB(255, 60, 60, 60),
      appBar: MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            height: 360,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: RoundedSearchInput(
                              hintText: "Search",
                              textController: TextEditingController(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: AppText(text: "Manage"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: AppLargeText(
                              text: "Your passwords",
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            height: 180,
                            width: 120,
                            child: CardFb1(
                                text: "Explore",
                                imageUrl:
                                    "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Accept_terms_re_lj38%201.png?alt=media&token=476b97fd-ba66-4f62-94a7-bce4be794f36",
                                subtitle: "+30 books",
                                onPressed: () {}),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            height: 180,
                            width: 130,
                            child: CardFb1(
                                text: "Explore",
                                imageUrl:
                                    "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Working_late_re_0c3y%201.png?alt=media&token=7b880917-2390-4043-88e5-5d58a9d70555",
                                subtitle: "+30 books",
                                onPressed: () {}),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            height: 180,
                            width: 130,
                            child: CardFb1(
                                text: "Explore",
                                imageUrl:
                                    "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Designer_re_5v95%201.png?alt=media&token=5d053bd8-d0ea-4635-abb6-52d87539b7ec",
                                subtitle: "+30 books",
                                onPressed: () {}),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: AppLargeText(text: "My Passwords"),
          ),
        ],
      ),
    );
  }
}
