import 'package:flutter/material.dart';
import 'package:flutter_codigo5_movieapp/ui/general/colors.dart';
import 'package:flutter_codigo5_movieapp/ui/widgets/title_description_widget.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "Fantastic Beasts: The Secrets of Dumbledore",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            centerTitle: true,
            expandedHeight: 200.0,
            elevation: 0,
            backgroundColor: kBrandPrimaryColor,
            flexibleSpace: FlexibleSpaceBar(
              // title: Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 50.0),
              //   child: Text(
              //     "Diego jlkajsdkasd sadsadsad asdasdasdsad asdasds",
              //     maxLines: 1,
              //     style: TextStyle(
              //       fontSize: 12.0,
              //     ),
              //   ),
              // ),
              // // titlePadding: EdgeInsets.symmetric(horizontal: 50.0),
              // centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "http://image.tmdb.org/t/p/w500/7ucaMpXAmlIM24qZZ8uI9hCY0hm.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            kBrandPrimaryColor.withOpacity(1),
                            kBrandPrimaryColor.withOpacity(0.0),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            floating: false,
            snap: false,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 14.0),
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "http://image.tmdb.org/t/p/w500/jrgifaYeUtTnaH7NF5Drkgjg2MB.jpg",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.date_range,
                                  color: Colors.white54,
                                  size: 14.0,
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "2022-01-01",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 13.0),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "Fantastic Beasts: The Secrets of Dumbledore",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Colors.white54,
                                  size: 14.0,
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "120 min",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 13.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleDescriptionWidget(
                        title: "Overview",
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(color: Colors.white54, fontSize: 14.0),
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
