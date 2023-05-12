import 'package:flutter/material.dart';
import 'package:data_klinik/model/home.dart';
import 'package:data_klinik/model/pasien.dart';
import 'package:data_klinik/ui/pasien_detail.dart';

class PasienPage extends StatefulWidget {
  final Home home;

  const PasienPage({super.key, required this.home});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Wempy Rifda"),
              ),
            ),
            onTap: () {
              Pasien wempy = Pasien(
                nomorRm: "222",
                namaPasien: "Wempy Rifda",
                tanggalLahirpasien: "2 November 2002",
                nomorTeleponpasien: "081215925733",
                alamat: "Ponorogo",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienDetai(pasien: wempy),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
