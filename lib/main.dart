import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Kartu());
}

class Kartu extends StatelessWidget {
  const Kartu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const TampilanKartu(),
    );
  }
}

class TampilanKartu extends StatelessWidget {
  const TampilanKartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //nilai const ini nilai nya constan/sama, google font tidak diketahui nilainya. Maka akan error jika kita tetap menggunakan const untuk menggunakan goole font
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //menjadikan seluruh body jadi ketengah, kalau row jadi => crossaxisaligment
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 21, 54, 110),
              backgroundImage: NetworkImage(
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTBtsutq3lltNChx5E4t2N9Slq-5V497ss_jrSaOIvlgEfJYWdZuxQwyT9ABpY0g2IC77u5niMKMzqdcsT1tdnTMMmL6ZDLVS0VFZyCSj4',
              ),
              radius: 70,
            ),
            Text(
              'Ousmane Dembele',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Pemain Profesional PSG',
              style: GoogleFonts.aBeeZee(
                fontSize: 20,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 50),
            Card(
              // margin: EdgeInsets.only(left: 10, right: 10),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('08535338111'),
              ),
            ),
            Card(
              // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('KucingGarong@gmail.com'),
                // trailing: Icon(Icons.arrow_circle_right),
              ),
            ),
            Card(
              // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.facebook),
                title: Text('Ousmane Dembele Skatepunk Jr'),
                // trailing: Icon(Icons.arrow_circle_right),
              ),
            ),
            Card(
              // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.tiktok),
                title: Text('Ousmane Dembele Official '),
                // trailing: Icon(Icons.arrow_circle_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
