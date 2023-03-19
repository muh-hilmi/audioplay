import 'package:audioplay/const/color.dart';
import 'package:audioplay/view/playerscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../model/song.dart';

var songs = [
  Song(title: 'A', singer: 'singer1'),
  Song(title: 'B', singer: 'singer2'),
  Song(title: 'C', singer: 'singer3'),
  Song(title: 'D', singer: 'singer4'),
  Song(title: 'E', singer: 'singer4'),
  Song(title: 'F', singer: 'singer4'),
  Song(title: 'G', singer: 'singer4'),
  Song(title: 'title1', singer: 'singer4'),
  Song(title: 'title2', singer: 'singer4'),
  Song(title: 'title3', singer: 'singer4'),
  Song(title: 'title4', singer: 'singer4'),
  Song(title: 'title5', singer: 'singer4'),
  Song(title: 'title6', singer: 'singer4'),
  Song(title: 'title7', singer: 'singer4'),
  Song(title: 'title8', singer: 'singer4'),
  Song(title: 'title9', singer: 'singer4'),
  Song(title: 'title10', singer: 'singer4'),
  Song(title: 'title11', singer: 'singer4'),
  Song(title: 'title12', singer: 'singer5'),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        title: const Text(
          'Spotify',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'GothamBold'),
          textScaleFactor: 1.05,
        ),
        backgroundColor: AppColor.primary,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: AppColor.secondary,
              title: Text(
                songs[index].title,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                songs[index].singer,
                style: TextStyle(color: Colors.white),
              ),
              leading: Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayerScreen(),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
