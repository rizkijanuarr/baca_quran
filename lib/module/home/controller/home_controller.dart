import 'package:baca_quran/core.dart';
import 'package:flutter_colored_print/flutter_colored_print.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter_colored_print/flutter_colored_print.dart' as c_l;

class HomeController extends GetxController {
  HomeView? view;

  var surats = <Surat>[].obs; // DATA SURAT
  var isLoading = true.obs; // LOADING

  @override
  void onInit() {
    fetchSurats(); // FETCH DATA SURAT DI ONINIT
    super.onInit();
  }

  void fetchSurats() async {
    try {
      isLoading(true); // LOADING

      // LOG URL API SURAT
      c_l.log("URL API SURAT: ${Api.home}",
          type: LogType.info, color: LogColor.magenta);

      // GET DATA SURAT
      var response = await Dio().get(
        Api.home,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      // JIKA STATUS CODE 200
      if (response.statusCode == 200) {
        List data = response.data; // DATA SURAT

        // LOG DATA SURAT
        c_l.log("DATA SURAT : $data",
            type: LogType.info, color: LogColor.magenta);

        // CONVERT DATA SURAT MENJADI LIST
        surats.value = data.map((item) => Surat.fromJson(item)).toList();
      } else {
        // LOG ERROR
        c_l.log("Failed to fetch data. Status code: ${response.statusCode}",
            type: LogType.error, color: LogColor.red);
      }
    } catch (e) {
      // LOG ERROR
      c_l.log("Error: $e", type: LogType.error, color: LogColor.red);
    } finally {
      // STOP LOADING
      isLoading(false);
    }
  }
}
