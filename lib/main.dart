import 'package:baca_quran/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      title: "rizkijanuar.com",
      debugShowCheckedModeBanner: true,
      home: HomeView(),
    ),
  );
}
