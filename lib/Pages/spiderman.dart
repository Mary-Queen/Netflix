import 'package:flutter/material.dart';
import 'package:netflix/Pages/reviews.dart';
import 'package:netflix/Pages/smartSearch.dart';

import '../Ratings.dart';
import '../castCard.dart';
import '../myButtons.dart';
import '../user.dart';
import '../video.dart';
import 'actors.dart';

class Spiderman extends StatelessWidget {
  const Spiderman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Search()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Spider man',
            style: TextStyle(color: Colors.white),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color.fromARGB(0, 11, 1, 12),
      body: ListView(
        children: [
          Stack(children: [
            Image.asset('assets/spider_man.png'),
            Positioned(
              top: 10,
              bottom: 10,
              right: 0,
              left: 10,
              child: Icon(
                Icons.play_arrow_outlined,
                size: 60,
                color: Colors.white,
                //weight: 100.0,
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 0, 3),
            child: Text(
              'Spiderman',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
            child: Text(
              'Marvel world',
              style: TextStyle(
                color: Colors.white38,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              children: [
                Rating(),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '3\$',
                    style: TextStyle(
                        color: Colors.amber[300],
                        fontSize: 29,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              NewButton(
                screen: Vid(),
                text: 'Watch',
              ),
              Icon(
                Icons.save_alt,
                color: Colors.white,
              ),
              Icon(
                Icons.heart_broken_outlined,
                color: Colors.white,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
            child: Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              'Superhuman strength, agility, endurance, ability to stick to and climb walls and other surfaces, uses self-\ndesigned webs, special \"Spider-Sense\" warns of incomng danger, genius intellect specializing \n chemistry and invention.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Row(
              children: [
                Container(
                    width: 150, child: Image.asset('assets/spider_man.png')),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Spider man',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Marvel World',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white38,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Drama, Science fiction,',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Superhero action movie',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Rating(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(107, 128, 121, 121),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.green,
                      ),
                      Text(
                        ' | 3K',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(107, 128, 121, 121),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        ' | 1K',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Row(
              children: [
                Text(
                  'Actors',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Actors()),
                    );
                  },
                  child: GestureDetector(
                    child: Text('View all',
                        style: TextStyle(color: Colors.white38, fontSize: 16)),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Actors()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              CastCard(
                actorName: 'Tobias Maguire',
                imagePath: 'Tobey_Maguire',
              ),
              CastCard(
                actorName: 'Kirsten Dunst',
                imagePath: 'kristenDunst',
              ),
              CastCard(
                actorName: 'Willem Dafoe',
                imagePath: 'James_Franco',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Row(
              children: [
                Text(
                  'Reviews',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Review()),
                    );
                  },
                  child: Text('View all',
                      style: TextStyle(color: Colors.white38, fontSize: 16)),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Review()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          User(
            userName: 'Tobias Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'Tobias Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'Tobias Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
        ],
      ),
    );
  }
}
