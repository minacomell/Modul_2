import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  KotakBiruJempol(warna: Colors.blue, teks: 'Biru',),
                  KotakBiruJempol(warna: Colors.orange, teks: 'Jingga',),
                ],
              ),
              const SizedBox(height: 20),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              KotakBiruJempol(warna: Colors.green, teks: 'Hijau',),
              KotakBiruJempol(warna: Colors.yellow, teks: 'Kuning',),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class KotakBiruJempol extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakBiruJempol({
    super.key,
    required this.warna,
    required this.teks,
});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
        ),
        const SizedBox(height: 5),
        Text(teks),
      ],
    );
  }
}