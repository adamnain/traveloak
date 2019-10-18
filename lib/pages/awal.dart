import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Traveloak'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Akun(),
          Divider(),
          MenuUtama(),
          MenuTambahan(),
          Promo()
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://miro.medium.com/fit/c/256/256/1*rxNJesU_GUriaviCCvJ54Q.jpeg"))),
        ),
        title: Text(
          'adamnain',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('365 Poin'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            RaisedButton(
              child: Text('Traveloak Pay'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    icon: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotel',
    icon: Icons.hotel,
    colorBox: Colors.indigo,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Aktivitas & Rekreasi',
    icon: Icons.card_travel,
    colorBox: Colors.greenAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Kuliner',
    icon: Icons.fastfood,
    colorBox: Colors.deepOrange,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Kereta',
    icon: Icons.directions_railway,
    colorBox: Colors.orange,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & Travel',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Transportasi Bandara',
    icon: Icons.local_car_wash,
    colorBox: Colors.lightBlueAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Rental Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.blueAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    icon: Icons.more_horiz,
    colorBox: Colors.grey,
    iconColor: Colors.black,
  ),
];

class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(title: 'Tagihan & Isi Ulang', icon: Icons.receipt),
  MenuTambahanItem(
      title: 'Internet Luar Negeri', icon: Icons.signal_wifi_4_bar),
  MenuTambahanItem(title: 'Tagihan & Isi Ulang', icon: Icons.movie),
  MenuTambahanItem(title: 'Tagihan & Isi Ulang', icon: Icons.payment),
  MenuTambahanItem(title: 'Tagihan & Isi Ulang', icon: Icons.flight),
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({this.title, this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Promo Saat ini',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 8.0),
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                //padding: EdgeInsets.only(left: 8.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue,
                        Colors.blue[800],
                      ]),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20.0, 20.0),
                          bottomRight: Radius.elliptical(150.0, 150.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0, left: 5.0, right: 30.0, bottom: 30),
                        child: Text(
                          '%',
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/promo.jpeg'),
                  )
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              )
            ],
          ),
        )
      ],
    );
  }
}
