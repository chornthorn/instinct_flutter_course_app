// Text widget is used to display text on the screen with different styles.
import 'package:flutter/material.dart';

class AboutTextView extends StatelessWidget {
  const AboutTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue. ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'This is text demo of style overline with color green and font size 20',
          style: TextStyle(
            fontSize: 32,
            color: Colors.green,
            decoration: TextDecoration.overline,
            fontWeight: FontWeight.w400,
            fontFamily: 'Dancing Script',
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'This is text demo of style overline with color green and font size 20',
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontStyle: FontStyle.italic,
            fontFamily: 'Roboto',
            letterSpacing: 2,
            height: 2,
          ),
        ),
      ],
    );
  }
}
