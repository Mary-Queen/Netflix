import 'package:flutter/material.dart';

import 'Pages/spiderman.dart';

class NewCard extends StatelessWidget {
  NewCard(
      {this.cardcolor,
      required this.name,
      this.option,
      required this.Imagepath});
  Color? cardcolor = Colors.black;
  String Imagepath;
  String? option;
  String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Spiderman()),
        );
      },
      child: Container(
        //color: cardcolor,
        width: double.infinity,
        height: 190,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: cardcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 200,
              width: 120,
              child: Image.asset('assets/$Imagepath.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '$name',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 84, 115, 178),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('New'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('8.7',
                            style: TextStyle(
                              color: Color.fromARGB(255, 84, 115, 178),
                            )),
                        Icon(
                          Icons.star_border,
                          color: Color.fromARGB(255, 84, 115, 178),
                        )
                      ],
                    ),
                    Text(
                      'Drama, Science fiction,\nSuperhero action movie',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                    Text(
                      'Time: 2.10h',
                      style:
                          TextStyle(fontSize: 11, color: Colors.grey.shade700),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text(
                        '2023',
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      child: GestureDetector(
                        child: Text(
                          'Subscribe',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 84, 115, 178),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
