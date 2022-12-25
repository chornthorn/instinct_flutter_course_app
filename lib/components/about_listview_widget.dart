import 'package:flutter/material.dart';



class AboutListViewWidget extends StatelessWidget {
  const AboutListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About ListView'),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context,index){
          return ListTile(
            title: Text('List Item $index'),
          );
        },
        separatorBuilder: (context,index){
          return const Divider();
        },
      ),
    );
  }
}

