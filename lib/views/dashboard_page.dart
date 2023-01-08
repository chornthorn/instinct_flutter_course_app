import 'package:flutter/material.dart';
import 'package:flutter_exercise_app/components/about_text_view.dart';

import '../components/about_container_widget.dart';
import '../components/about_grid_view_widget.dart';
import '../components/about_image_widget.dart';
import '../components/about_listview_widget.dart';
import '../components/about_page_view_widget.dart';
import '../components/about_row_column_widget.dart';
import '../components/about_stack_widget.dart';
import '../components/about_text_field_widget.dart';
import '../components/add_promotion_page.dart';
import '../components/sample_demo_page.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: AboutPageViewWidget(),
    );
  }
}
