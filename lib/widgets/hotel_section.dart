import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/main.dart';
import 'package:hotel/widgets/hotel_card.dart';

class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'Le K2',
      'place': 'Courchevel, France',
      'distance': 650,
      'review': 99,
      'picture': 'images/k2.jpg',
      'price': '1800',
    },
    {
      'title': 'Hotel le Meurice',
      'place': 'Paris, France',
      'distance': 2,
      'review': 91,
      'picture': 'images/Le_Meurice.jpg',
      'price': '1900',
    },
    {
      'title': 'Le Bristol Paris',
      'place': 'Paris, France',
      'distance': 8,
      'review': 97,
      'picture': 'images/Le_Bristol_Paris.jpg',
      'price': '2000',
    },
    {
      'title': 'Hotel Raphaël',
      'place': 'Paris, France',
      'distance': 11,
      'review': 35,
      'picture': 'images/Hôtel_Raphael.jpg',
      'price': '180',
    },
    {
      'title': 'Grand Royal Hotel',
      'place': 'Wembley, London',
      'distance': 928,
      'review': 70,
      'picture': 'images/grand_royal_hotel.png',
      'price': '890',
    },
  ];

  HotelSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '551 hôtels FoundsFilters',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Filters',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: dgreen,
                        size: 25,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotel);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
