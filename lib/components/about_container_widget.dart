import 'package:flutter/material.dart';

// height & width
// color
// alignment
// padding
// margin
// decoration
// transform
// child

class AboutContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                //borderRadius: BorderRadius.circular(10),
                shape: BoxShape.circle,
              ),
              transform: Matrix4.rotationZ(0.1),
              child: Text('Container'),
            ),
            const SizedBox(height: 50),
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              transform: Matrix4.rotationZ(-0.1),
              child: Text('Container'),
            ),
            const SizedBox(height: 50),
            // DecoratedBox
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                transform: Matrix4.rotationZ(0.1),
                child: Text('Container'),
              ),
            ),
            // container with custome shape and shadow
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Text('Container'),
            ),
          ],
        ),
      ),
    );
  }
}