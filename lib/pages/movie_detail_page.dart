import 'package:flutter/material.dart';
import 'package:flutter_codigo5_movieapp/ui/general/colors.dart';

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

              ],
            ),
          ),
        ],
      ),
    );
  }
}
