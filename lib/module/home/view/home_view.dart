import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:baca_quran/core.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baca Quran'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.surats.length,
          itemBuilder: (context, index) {
            var surat = controller.surats[index];
            return ListTile(
              title: Text(surat.namaLatin),
              subtitle: Text(surat.arti),
              onTap: () {
                // Navigate to detail page
              },
            );
          },
        );
      }),
    );
  }
}
