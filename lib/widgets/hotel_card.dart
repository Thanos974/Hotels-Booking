import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/main.dart';

class HotelCard extends StatelessWidget {
  final Map hotelData;
  const HotelCard(this.hotelData, {Key? key}) : super(key: key);
  // const HotelCard({Key? key, required this.hotelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  hotelData['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite_outline_rounded,
                      color: dgreen,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  hotelData['price'] + '€',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: dgreen,
                      size: 14.0,
                    ),
                    Text(
                      hotelData['distance'].toString() + ' km',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  'par nuit',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_border,
                      color: dgreen,
                      size: 14.0,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
