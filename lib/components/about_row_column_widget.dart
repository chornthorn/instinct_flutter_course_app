import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     Container(
            //       color: Colors.blue,
            //       width: 100,
            //       height: 100,
            //     ),
            //     Container(
            //       color: Colors.green,
            //       width: 100,
            //       height: 80,
            //     ),
            //     Container(
            //       color: Colors.indigo,
            //       width: 100,
            //       height: 90,
            //     ),
            //   ],
            // ),
            // Container(
            //   color: Colors.red,
            //   width: 300,
            //   height: 100,
            // ),
            // Container(
            //   color: Colors.indigo,
            //   width: 300,
            //   height: 100,
            // ),

            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://picsum.photos/250?image=9',
              ),
            ),
            SizedBox(height: 32),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),

            SizedBox(
              width: 300,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
