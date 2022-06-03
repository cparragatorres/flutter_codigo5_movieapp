
import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Hola"),
            centerTitle: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(),
          ),

          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 200.0,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 200.0,
                  color: Colors.yellow,
                ),
                Container(
                  height: 200.0,
                  color: Colors.green,
                ),
                Container(
                  height: 200.0,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 200.0,
                  color: Colors.yellow,
                ),
                Container(
                  height: 200.0,
                  color: Colors.green,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
