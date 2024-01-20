import 'package:flutter/material.dart';
import 'package:getitdone/models/color_theme_data.dart';
import 'package:getitdone/models/items_data.dart';
import 'package:getitdone/screens/main_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (context) => ItemData()),
    ChangeNotifierProvider<ColorsThemeData>(create: (context) => ColorsThemeData(),),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ColorsThemeData>(context).selectedThemeData,
      home: MainPage(),
    );
  }
}

//ThemeData(
//         iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//         switchTheme: SwitchThemeData(
//           thumbColor: MaterialStateProperty.all<Color>(Colors.green),
//           trackColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.5)),
//           overlayColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.25)),
//         ),
//         inputDecorationTheme: const InputDecorationTheme(
//           labelStyle: TextStyle(
//             color: Colors.green, // Label rengi
//           ),
//           border: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.green),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.green, // Kenarlık rengi
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.green, // Kenarlık rengi
//             ),
//           ),
//         ),
//         primaryColor: Colors.green,
//         primarySwatch: Colors.green,
//         scaffoldBackgroundColor: Colors.green,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: Colors.green,
//           foregroundColor: Colors.white,
//         ),
//         appBarTheme: AppBarTheme(
//           color: Colors.green[700],
//           titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//         textTheme: TextTheme(
//           titleMedium: TextStyle(color: Colors.white),
//           displaySmall: TextStyle(color: Colors.white),
//         ),
//         buttonTheme: ButtonThemeData(
//           buttonColor: Colors.green,
//           textTheme: ButtonTextTheme.primary,
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//           ),
//         ),
//         outlinedButtonTheme: OutlinedButtonThemeData(
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//           ),
//         ),
//         textButtonTheme: TextButtonThemeData(
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//           ),
//         ),
//         useMaterial3: true,
//       ),
