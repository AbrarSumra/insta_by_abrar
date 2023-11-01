import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/text_form_field.dart';
import 'package:marquee/marquee.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isReelLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: 380,
                  child: CustomTextField(),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    bottom: 10,
                                    top: 10,
                                  ),
                                  color: Colors.blue,
                                ),
                                Container(
                                  height: 120,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    bottom: 10,
                                  ),
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  margin: const EdgeInsets.only(
                                    left: 12.5,
                                    bottom: 10,
                                    top: 10,
                                  ),
                                  color: Colors.red,
                                ),
                                Container(
                                  height: 120,
                                  width: 120,
                                  margin: const EdgeInsets.only(
                                    left: 12.5,
                                    bottom: 10,
                                  ),
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 250,
                              width: 50,
                              color: Colors.orange,
                              margin: const EdgeInsets.only(left: 12.5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Container(
                                            width: 110,
                                            height: 20,
                                            alignment: Alignment.centerLeft,
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black26,
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  CupertinoIcons.music_note_2,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                                const SizedBox(width: 5),
                                                Expanded(
                                                  child: Marquee(
                                                    text:
                                                        "Type here Song Name........",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    scrollAxis: Axis.horizontal,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    blankSpace: 20.0,
                                                    velocity: 20.0,
                                                    startPadding: 10,
                                                    accelerationCurve:
                                                        Curves.linear,
                                                    decelerationCurve:
                                                        Curves.easeOut,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 250,
                              color: Colors.orange,
                              margin: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Container(
                                            width: 110,
                                            height: 20,
                                            alignment: Alignment.centerLeft,
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black26,
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  CupertinoIcons.music_note_2,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                                const SizedBox(width: 5),
                                                Expanded(
                                                  child: Marquee(
                                                    text:
                                                        "Type here Song Name........",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    scrollAxis: Axis.horizontal,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    blankSpace: 20.0,
                                                    velocity: 20.0,
                                                    startPadding: 10,
                                                    accelerationCurve:
                                                        Curves.linear,
                                                    decelerationCurve:
                                                        Curves.easeOut,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  margin: const EdgeInsets.only(
                                    left: 12.5,
                                    bottom: 10,
                                    top: 10,
                                  ),
                                  color: Colors.blue,
                                ),
                                Container(
                                  height: 120,
                                  margin: const EdgeInsets.only(
                                    left: 12.5,
                                    bottom: 10,
                                  ),
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  margin: const EdgeInsets.only(
                                    left: 12.5,
                                    bottom: 10,
                                    top: 10,
                                  ),
                                  color: Colors.red,
                                ),
                                Container(
                                  height: 120,
                                  margin: const EdgeInsets.only(
                                    left: 12.5,
                                    bottom: 10,
                                  ),
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
