
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_movieapp/ui/general/colors.dart';
import 'package:flutter_codigo5_movieapp/ui/widgets/loading_indicator_widget.dart';

class CastDetailPage extends StatefulWidget {
  const CastDetailPage({Key? key}) : super(key: key);

  @override
  State<CastDetailPage> createState() => _CastDetailPageState();
}

class _CastDetailPageState extends State<CastDetailPage> {




  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kBrandPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      contentPadding: EdgeInsets.zero,
      content: false
          ? const SizedBox(
        height: 300,
        child: LoadingIndicatorWidget(),
      )
          : Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://image.tmdb.org/t/p/w500/u2tnZ0L2dwrzFKevVANYT5Pb1nE.jpg",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Text(
                  "Harold Torres asdsad",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Mexico City, Distrito Federal, Mexico",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 13.0,
                  ),
                ),
                Text(
                  "1991-03-15",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 13.0,
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
