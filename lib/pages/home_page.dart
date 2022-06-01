import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List movies = [];

  @override
  initState() {
    super.initState();
    getMovies();
  }

  getMovies() async {
    String path =
        "https://api.themoviedb.org/3/discover/movie?api_key=077c6b8e215715b477754b84846c0f95";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      movies = myMap["results"];
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff161823),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: movies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 14.0),
                      width: double.infinity,
                      height: height * 0.65,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(4, 4),
                            blurRadius: 12.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(22.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "http://image.tmdb.org/t/p/w500${movies[index]["poster_path"]}",
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(22),
                                  bottomLeft: Radius.circular(22),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    movies[index]["original_title"],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    movies[index]["overview"],
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.date_range,
                                            color: Colors.white,
                                            size: 14.0,
                                          ),
                                          const SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            movies[index]["release_date"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.thumb_up_alt,
                                            color: Colors.white,
                                            size: 14.0,
                                          ),
                                          const SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            movies[index]["vote_count"]
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: const EdgeInsets.all(14.0),
                              margin: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                "5.3",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
