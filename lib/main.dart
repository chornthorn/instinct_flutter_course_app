import 'package:flutter/material.dart';
import 'package:flutter_exercise_app/views/dashboard_page.dart';

import 'components/about_listview_widget.dart';

// set of style

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            elevation: 0,
          )),
      //home: DashboardPage(),
      // routes: {
      //   '/': (context) => DashboardPage(),
      //   '/product_detail': (context) => ProductDetailPage(),
      //   '/home': (context) => HomePage(),
      // },
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => DashboardPage(),
          );
        } else if (settings.name == '/product_detail') {
          final args = settings.arguments as Product;
          return MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              product: args,
            ),
          );
        }
        return null;
      },
    );
  }
}
