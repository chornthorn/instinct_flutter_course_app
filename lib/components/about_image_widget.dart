import 'package:flutter/material.dart';

class AboutImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // fit cover
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              'assets/img/computer.jpg',
              fit: BoxFit.cover,
              errorBuilder: (
                  BuildContext context,
                  Object exception,
                  StackTrace? stackTrace,
                  ) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Error'),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // fit contain
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              'assets/img/computer.jpg',
              fit: BoxFit.contain,
              errorBuilder: (
                BuildContext context,
                Object exception,
                StackTrace? stackTrace,
              ) {
                return const Text(
                  'Your error widget...',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.red,
                    fontFamily: 'Dancing Script',
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // fit fill
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              'assets/img/computer.jpg',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          // fit fitHeight
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              'assets/img/computer.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(height: 20),
          // fit fitWidth
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              'assets/img/computer.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 20),
          // fit none
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              'assets/img/computer.jpg',
              fit: BoxFit.none,
            ),
          ),
          const SizedBox(height: 20),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          const SizedBox(height: 20),
          Text(
            'Image from network',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          const SizedBox(height: 20),
          // fit conver
          Container(
            width: 300,
            height: 300,
            child: Image.network(
              'https://images.pexels.com/photos/459653/pexels-photo-459653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              fit: BoxFit.cover,
              errorBuilder: (
                BuildContext context,
                Object exception,
                StackTrace? stackTrace,
              ) {
                return const Text(
                  'Your error widget...',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.red,
                    fontFamily: 'Dancing Script',
                  ),
                );
              },
              loadingBuilder: (
                BuildContext context,
                Widget child,
                ImageChunkEvent? loadingProgress,
              ) {
                if (loadingProgress == null) return child;
                return Center(child: CircularProgressIndicator());
                // return Center(
                //   child: CircularProgressIndicator(
                //     value: loadingProgress.expectedTotalBytes != null
                //         ? loadingProgress.cumulativeBytesLoaded /
                //             loadingProgress.expectedTotalBytes!
                //         : null,
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
