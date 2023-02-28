import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hotelroom(),
  ));
}

class hotelroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(""), fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 23,
                  bottom: 70,
                  child: Container(
                    child: const Text(
                      'Grand Hayatt \nKochi',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                // Positioned(
                //   left: 23,
                //   bottom: 45,
                //   child: Container(
                //     child: Text(
                //       '',
                //       style: TextStyle(
                //           fontSize: 30,
                //           fontWeight: FontWeight.w400,
                //           color: Colors.white),
                //     ),
                //   ),
                // ),
                Positioned(
                  left: 23,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '8.4/85 reviews',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 23,
                  bottom: 70,
                  child: Container(
                      child: Icon(
                    Icons.favorite_outline_outlined,
                    color: Colors.white,
                  )),
                )
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.purple,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(
                              width: 15,
                            ),
                            Text('8km to Lulu Mall'),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [Text('\$ 200'), Text('/per night')],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Book Now'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.purple,
                  minimumSize: Size(400, 50)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          "Located in Cochin, Grand Hyatt Kochi Bolgatty is a waterfront resort featuring two swimming pools a tennis court as well as a fitness center."
                          "All rooms are air-conditioned with private bathrooms and hot tub. Rooms and suites are well equipped with workstations & flat screen TV. The rooms offer spectacular views of lake, garden, city or pool."
                          "Guests have access to the business center, spa & salon, kids play area and some of the finest signature restaurants in the city."
                          "A continental or buffet breakfast is available daily at the property."
                          "Guests can rent a car to explore the area. Speaking English and Hindi at the reception, staff are always on hand to help."
                          "Colony Clubhouse & Grill is a classic Old World grill on the hotel’s rooftop while Malabar Cafe is an all- day outlet that showcases the culinary expertize of Kerala."
                          "The property is 3.1 mi away from Durbar Hall Art Gallery which houses painting by illustrious local artists and 3.8 mi away from Greenix Village which showcases traditional music and arts. Kochi International Airport is 20 mi from the property and a 45-minute drive away."
                          "Couples in particular like the location – they rated it 9.1 for a two-person trip."),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
