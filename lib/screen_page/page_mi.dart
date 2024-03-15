import 'package:flutter/material.dart';

class PageMI extends StatelessWidget {
  const PageMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Manajemen Informatika'),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Deskripsi dan Profil',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80,),
              Text(
                'Program Studi Manajemen Informatika (Kampus Kab. Pelalawan) merupakan salah satu Program Studi Diluar Kampus Utama (PSDKU) Politeknik Negeri Padang yang memiliki sejarah dan keterkaitan erat dengan berdirinya Akademi Komunitas di Daerah Pelalawan. '
                    'Berangkat dari SK Pendirian Akademi Komunitas Nomor : 179/P/2013 Tanggal 26 September 2013, Program Studi Diluar Domisili (PDD) Kabupaten Pelalawan di awal berdirinya memiliki Program Studi D2 Elektro Industri dan D2 Manajemen Informatika.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 75,),
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('back',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                color: Colors.deepOrange,
                textColor: Colors.white,
              ),
            ],
          ),
        )
      ),
    );
  }
}



