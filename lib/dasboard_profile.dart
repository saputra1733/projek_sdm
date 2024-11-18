import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DasboardProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pimpinan Prodi'),
        backgroundColor: Color(0xFF3b73e9),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: () {
           Navigator.pushReplacementNamed(
                context, '/dashboard');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings), 
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Log Out',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Profil Pimpinan Prodi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Color(0xFF3b73e9), width: 5),
              ),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Profil dan Dokumen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pimpinan Kaprodi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nama: Lorem ipsum dolor sit amet',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Telepon: Lorem ipsum dolor sit amet',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Unit Kerja: Lorem ipsum dolor sit amet',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Alamat Unit Kerja: Lorem ipsum dolor sit amet',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pendidikan: Lorem ipsum dolor sit amet',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(), 
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFF3b73e9),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'BLU POLITEKNIK NEGERI MALANG\nSoehat No.2 Malang 65141\nTelp: (0341) 404424\nFax: (0341) 404425\nEmail: info@polinema.ac.id',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.white),
            //       onPressed: () {},
            //     ),
            //   ],
            // ),
            SizedBox(height: 10),
            Text(
              'Copyright © 2024 Polinema. All rights reserved.',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

