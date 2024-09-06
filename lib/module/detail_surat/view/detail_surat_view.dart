import 'package:baca_quran/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailSuratView extends StatelessWidget {
  const DetailSuratView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailSuratController>(
      init: DetailSuratController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Detail Surat"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Column(
                children: [],
              ),
            ),
          ),
        );
      },
    );
  }
}
