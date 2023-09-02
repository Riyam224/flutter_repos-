import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Musique App',
          style: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Divider(
              color: const Color.fromRGBO(0, 0, 0, 1),
              thickness: 2,
              height: 30,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(23),
              child: Container(
                height: 500,
                child: Image.asset(
                  'assets/images/355542330_1223334608349683_8324898012610155215_n.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('sound/rain.mp3'));
              },
              icon: const Icon(
                Icons.play_circle_fill_outlined,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
