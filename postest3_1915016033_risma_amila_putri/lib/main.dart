import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

enum Pilihan { Unknown, Wardah, Pixy, Emina, Maybelline }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String NamaAnda = '', PesananAnda = '', JumlahPesanan = '';
  final ctrlNamaAnda = TextEditingController();
  final ctrlPesananAnda = TextEditingController();
  final ctrlJumlahPesanan = TextEditingController();
  bool isAda = false;
  Pilihan pilihan = Pilihan.Unknown;

  @override
  void dispose() {
    ctrlNamaAnda.dispose();
    ctrlPesananAnda.dispose();
    ctrlJumlahPesanan.dispose();
    super.dispose();
  }

  String getPilihan(Pilihan value) {
    if (value == Pilihan.Wardah) {
      return "Wardah";
    } else if (value == Pilihan.Pixy) {
      return 'Pixy';
    } else if (value == Pilihan.Emina) {
      return 'Emina';
    } else if (value == Pilihan.Maybelline) {
      return 'Maybelline';
    }
    return "Kosong";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 169, 125, 61),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 178, 84),
        title: Text("Risma Amila Putri"),
        titleTextStyle: TextStyle(
          color: Colors.black45,
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "YEPPEUSTORE",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 850,
                height: 750,
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 178, 84),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 48),
                    TextField(
                      controller: ctrlNamaAnda,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Isi Nama Anda",
                        labelText: "Nama Anda",
                      ),
                    ),
                    SizedBox(height: 48),
                    TextFormField(
                      controller: ctrlPesananAnda,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Isi Pesanan Anda",
                        labelText: "Pesanan Anda",
                      ),
                    ),
                    SizedBox(height: 48),
                    TextFormField(
                      controller: ctrlJumlahPesanan,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Isi Jumlah Pesanan Anda",
                        labelText: "Jumlah Pesanan Anda",
                      ),
                    ),
                    ListTile(
                      title: Text("???"),
                      leading: Radio(
                        groupValue: pilihan,
                        value: Pilihan.Unknown,
                        onChanged: (Pilihan? value) {
                          setState(() {
                            pilihan = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Ada Lagi ?"),
                      leading: Checkbox(
                        value: isAda,
                        onChanged: (bool? value) {
                          setState(() {
                            isAda = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Wardah"),
                      leading: Radio(
                        groupValue: pilihan,
                        value: Pilihan.Wardah,
                        onChanged: (Pilihan? value) {
                          setState(() {
                            pilihan = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Pixy"),
                      leading: Radio(
                        groupValue: pilihan,
                        value: Pilihan.Pixy,
                        onChanged: (Pilihan? value) {
                          setState(() {
                            pilihan = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Emina"),
                      leading: Radio(
                        groupValue: pilihan,
                        value: Pilihan.Emina,
                        onChanged: (Pilihan? value) {
                          setState(() {
                            pilihan = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Maybelline"),
                      leading: Radio(
                        groupValue: pilihan,
                        value: Pilihan.Maybelline,
                        onChanged: (Pilihan? value) {
                          setState(() {
                            pilihan = value!;
                          });
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          NamaAnda = ctrlNamaAnda.text;
                          PesananAnda = ctrlPesananAnda.text;
                          JumlahPesanan = ctrlJumlahPesanan.text;
                        });
                      },
                      child: Text("Tampilkan"),
                    ),
                  ],
                ),
              ),
              Text(
                "Nama Anda $NamaAnda",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Pesanan Anda Adalah $PesananAnda",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Jumlah Pesanan Anda $JumlahPesanan",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Ada Lagi? ${isAda ? "Ada" : "Tidak Ada"}",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Merek ${getPilihan(pilihan)}"),
              SizedBox(height: 18),
            ],
          ),
        ],
      ),
    );
  }
}
