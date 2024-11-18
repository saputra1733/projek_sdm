import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4A90E2),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/detail');
                    },
                    child: Text(
                      'Evaluasi kerja',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/penilaian');
                    },
                    child: Text(
                      'Penilaian',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/surat');
                    },
                     child: Text(
                      'Surat Tugas',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login_page');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFFD0021B),
                ),
                child: Text('Log Out'),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://thumb.viva.id/vivaceritakita/1265x711/2022/12/21/63a2ec0ecd70a-gus-samsudin_ceritakita.jpg'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Lorem ipsum dolor sit amet'),
                        SizedBox(height: 10),
                        Text(
                          'NIDN',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Lorem ipsum dolor sit amet'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dokumen',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    DocumentItem(),
                    DocumentItem(),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jadwal dan kegiatan',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        border: Border.all(color: Color(0xFF4A90E2), width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DDM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('22-09-2024'),
                          Text('Lorem Ipsum dolor sit amet, consectetur'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class DocumentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFD0021B),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'PDF',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Document Name',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF4A90E2), // Set the background color
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          // Add a title
          Text(
            'Kontak',
            style: TextStyle(
              color: Colors.white, 
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
            ),
          ),
          SizedBox(height: 10), 
        
          Text(
            'BLU POLITEKNIK NEGERI MALANG\n'
            '- Soekarno Hatta Street No.9 Malang 65141\n'
            'Jatimulyo, Kec. Lowokwaru, Malang, East Java, Indonesia\n'
            '- PMDN',
            style: TextStyle(color: Colors.white, fontSize: 16), 
            textAlign: TextAlign.center, 
          ),
          SizedBox(height: 20),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook, color: Colors.white, size: 30),
              SizedBox(width: 10),
              Icon(Icons.email, color: Colors.white, size: 30),
              SizedBox(width: 10),
              Icon(Icons.youtube_searched_for, color: Colors.white, size: 30),
            ],
          ),
          SizedBox(height: 10), // Spacing
          // Copyright section
          Text(
            'Copyright © 2024 Polinema. All rights reserved.',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

