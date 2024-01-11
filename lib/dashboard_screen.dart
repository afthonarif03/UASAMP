import 'package:afthonuts/database/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 230, 126, 23),
              Color.fromARGB(255, 121, 222, 14)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    // Ketika ikon "Profile" diklik, navigasikan ke tampilan profil dengan data
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Mengenalhewanscreen(),
                    ));
                  },
                  child: DashboardItem(
                    label: '',
                    image: AssetImage(
                        'assets/menu1.png'), // Ganti dengan path gambar Anda
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ketika ikon "Profile" diklik, navigasikan ke tampilan profil dengan data
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AlfabetScreen(),
                    ));
                  },
                  child: DashboardItem(
                    label: '',
                    image: AssetImage(
                        'assets/menu2.png'), // Ganti dengan path gambar Anda
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ketika ikon "Profile" diklik, navigasikan ke tampilan profil dengan data
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AngkaScreen(),
                    ));
                  },
                  child: DashboardItem(
                    label: '',
                    image: AssetImage(
                        'assets/menu3.png'), // Ganti dengan path gambar Anda
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ketika ikon "Profile" diklik, navigasikan ke tampilan profil dengan data
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BendaSekitarScreen(),
                    ));
                  },
                  child: DashboardItem(
                    label: '',
                    image: AssetImage(
                        'assets/menu4.png'), // Ganti dengan path gambar Anda
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ketika ikon "Profile" diklik, navigasikan ke tampilan profil dengan data
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Membacascreen(),
                    ));
                  },
                  child: DashboardItem(
                    label: '',
                    image: AssetImage(
                        'assets/menu5.png'), // Ganti dengan path gambar Anda
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ketika ikon "Profile" diklik, navigasikan ke tampilan profil dengan data
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyApp1(),
                    ));
                  },
                  child: DashboardItem(
                    label: '',
                    image: AssetImage(
                        'assets/menu6.png'), // Ganti dengan path gambar Anda
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final IconData? icon;
  final String label;
  final ImageProvider? image;

  DashboardItem({this.icon, required this.label, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                image: image != null
                    ? DecorationImage(
                        image: image!,
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 120),
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: const Color.fromARGB(
            255, 253, 253, 253), // Ganti warna latar belakang sesuai kebutuhan
      ),
      body: Container(
        color: Color.fromARGB(255, 103, 4, 4),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/afthonarif.jpg'),
              ),
              const SizedBox(height: 40),
              itemProfile('Name', 'Afthon Arif', CupertinoIcons.person),
              const SizedBox(height: 10),
              itemProfile('NPM', '21670038', CupertinoIcons.list_number),
              const SizedBox(height: 10),
              itemProfile('Phone', '082324955704', CupertinoIcons.phone),
              const SizedBox(height: 10),
              itemProfile('Email', 'afthonarif@gmail.com', CupertinoIcons.mail),
              const SizedBox(height: 10),
              itemProfile('Club Favorite', 'Manchester United FC',
                  CupertinoIcons.heart),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.black),
        tileColor: Colors.black,
      ),
    );
  }
}

class Membacascreen extends StatelessWidget {
  // Sample data for the list
  final List<String> submenuItems = [
    'Aku baca buku baru',
    'Buku adalah jendela dunia',
    'Ara sedang menggendong kucing',
    'Nenek menyapu halaman',
    'Kakak mendengar musik',
    'Ayah minum kopi pahit',
    'Adik bermain mobilan',
    'Ayo buang sampah pada tempatnya',
    'Beni meletakkan sepatu di rak',
    'Ibu sedang memasak di dapur',
    'Topi Edo warna biru',
    'Sapi putih sedang makan rumput',
    'Bapak selesai membajak sawah',
    'Rudi suka bermain bola di lapangan',
    'Kucing hitam tidur di kolong meja',
    'Kakak bermain gitar sambil bernyanyi',

    // Add more submenu items here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Membaca'),
      ),
      backgroundColor: const Color.fromARGB(255, 235, 203, 107),
      body: ListView.builder(
        itemCount: submenuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4, // Adds a shadow to the cards
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                submenuItems[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              leading: CircleAvatar(
                backgroundColor:
                    Colors.blue, // Customize the avatar background color
                child: Icon(Icons
                    .library_books_sharp), // Example icon, you can use different icons or images
                foregroundColor: Colors.white, // Color of the icon/image
              ),
              onTap: () {
                // Handle onTap action for each list item
              },
            ),
          );
        },
      ),
    );
  }
}

class Mengenalhewanscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mengenal Hewan'),
      ),
      backgroundColor: Color.fromARGB(255, 122, 223, 245),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/kucing.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Kucing',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 1 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/gajah.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Gajah',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/ayam.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Ayam',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/ikan.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Ikan',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/jerapah.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Jerapah',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/sapi.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Sapi',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 3 diklik
            },
          ),
          // Tambahkan lebih banyak ListTile sesuai kebutuhan
        ],
      ),
    );
  }
}

class AlfabetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghafal Alfabet'),
      ),
      backgroundColor: Color.fromARGB(255, 247, 171, 171),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/a.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/b.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/c.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/d.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/e.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/f.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/g.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/h.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/i.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/j.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/k.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/l.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/m.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/n.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/o.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/p.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/q.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/r.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/s.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/t.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/u.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/v.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/w.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/x.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara dua baris kotak

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/y.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/alfabet/z.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AngkaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghafal Angka'),
      ),
      backgroundColor: Color.fromARGB(255, 154, 251, 193),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/1.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/2.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/3.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/4.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/5.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/6.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/7.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/8.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/9.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // Ubah dengan warna latar belakang yang diinginkan jika gambar tidak terisi

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/angka/0.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.contain,
                        // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BendaSekitarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Benda di sekitar'),
      ),
      backgroundColor: Color.fromARGB(255, 248, 129, 240),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/benda/kasur.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Kasur',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 1 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/benda/lampu.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Lampu',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/benda/lemari.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Lemari',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/benda/meja.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Meja',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/benda/sofa.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Sofa',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 2 diklik
            },
          ),
          ListTile(
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/benda/tv.png', // Ganti dengan path gambar Anda
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Televisi',
                  style: TextStyle(
                    fontSize:
                        50, // Ubah ukuran teks sesuai kebutuhan (misalnya, 18)
                    fontWeight: FontWeight.bold, // Atur gaya teks jika perlu
                    color: const Color.fromARGB(
                        255, 105, 105, 105), // Atur warna teks jika diperlukan
                  ),
                )
              ],
            ),
            onTap: () {
              // Tambahkan logika untuk aksi ketika Submenu Item 3 diklik
            },
          ),
          // Tambahkan lebih banyak ListTile sesuai kebutuhan
        ],
      ),
    );
  }
}

class BelajarMenulisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Menulis'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Tulisan Pertama'),
            subtitle: Text('Deskripsi tulisan pertama'),
            leading: Icon(Icons.edit), // Ganti ikon sesuai kebutuhan
            onTap: () {
              // Tambahkan logika ketika item pertama diklik
            },
          ),
          ListTile(
            title: Text('Tulisan Kedua'),
            subtitle: Text('Deskripsi tulisan kedua'),
            leading: Icon(Icons.edit), // Ganti ikon sesuai kebutuhan
            onTap: () {
              // Tambahkan logika ketika item kedua diklik
            },
          ),
          // Tambahkan lebih banyak ListTile sesuai kebutuhan
        ],
      ),
    );
  }
}
