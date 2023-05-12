import 'package:data_klinik/model/home.dart';
import 'package:flutter/material.dart';
import 'package:data_klinik/model/pegawai.dart';
import 'package:data_klinik/ui/pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  final Home home;

  const PegawaiPage({super.key, required this.home});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Fardi Zidan"),
              ),
            ),
            onTap: () {
              Pegawai FardiZidan = Pegawai(
                nip: "12210364",
                namaPegawai: "Fardi Zidan",
                tanggalLahir: "21 Juni 2002",
                nomorTelepon: "081215925733",
                email: "12211141@bsi.ac.id",
                password: "12345",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(pegawai: FardiZidan),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
