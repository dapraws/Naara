import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class NewsArticle extends StatelessWidget {
  final void Function()? onTap;

  NewsArticle({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.brown,
            gradient: LinearGradient(
              // stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Colors.black,
                Color.fromARGB(144, 161, 161, 161),
                Colors.white
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/clean-water.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // width: 200,
                  // height: 50,
                  // decoration: BoxDecoration(
                  //     color: Colors.black,
                  //     borderRadius: BorderRadius.circular(10)),
                  // alignment: Alignment.center,
                  child: Expanded(
                    child: Text(
                      'Naara, Aplikasi Ciptakan Solusi Air Bersih untuk Masyarakat',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: light,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
