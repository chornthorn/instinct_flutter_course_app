import 'package:flutter/material.dart';
import 'package:flutter_exercise_app/constants/custom_colors.dart';

class AboutGridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About GridView Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        // child: MyCustomGridView(),
        // child: GridViewExtentWidget(),
        // child: GridViewDelegateWidget(),
        // child: GridViewDelegateExtentWidget(),
        child: GridViewBuilderWidget(),
        // child: AboutListView(),
      ),
    );
  }
}

class MyCustomGridView extends StatelessWidget {
  const MyCustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.8,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      children: List.generate(50, (index) {
        return DemoItemCard(
          coverImgPath: 'https://picsum.photos/200?image=$index',
          title: 'Macbook pro 2023',
        );
      }),
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  const GridViewExtentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 180,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.8,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      children: List.generate(50, (index) {
        return DemoItemCard(
          coverImgPath: 'https://picsum.photos/200?image=$index',
          title: 'Macbook pro 2023',
        );
      }),
    );
  }
}

class GridViewDelegateWidget extends StatelessWidget {
  const GridViewDelegateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      children: List.generate(50, (index) {
        return DemoItemCard(
          coverImgPath: 'https://picsum.photos/200?image=$index',
          title: 'Macbook pro 2023',
        );
      }),
    );
  }
}

class GridViewDelegateExtentWidget extends StatelessWidget {
  const GridViewDelegateExtentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      children: [
        ...List.generate(50, (index) {
          return DemoItemCard(
            coverImgPath: 'https://picsum.photos/200?image=$index',
            title: 'Macbook pro 2023',
          );
        }),
      ],
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return DemoItemCard(
          coverImgPath: 'https://picsum.photos/200?image=$index',
          title: 'Macbook pro 2023',
        );
      },
    );
  }
}

class _ProductModel {
  final String coverImgPath;
  final String title;

  _ProductModel({
    required this.coverImgPath,
    required this.title,
  });

  static List<_ProductModel> getProducts() {
    return [
      _ProductModel(
        coverImgPath: 'https://picsum.photos/200?image=1',
        title: 'Macbook pro 2023',
      ),
      _ProductModel(
        coverImgPath: 'https://picsum.photos/200?image=2',
        title: 'Macbook pro 2023',
      ),
      _ProductModel(
        coverImgPath: 'https://picsum.photos/200?image=3',
        title: 'Macbook pro 2023',
      ),_ProductModel(
        coverImgPath: 'https://picsum.photos/200?image=3',
        title: 'Macbook pro 2023',
      ),
    ];
  }
}

class AboutListView extends StatelessWidget {
  const AboutListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...List.generate(_ProductModel.getProducts().length, (index) => DemoItemCard(
          coverImgPath: _ProductModel.getProducts()[index].coverImgPath,
          title: _ProductModel.getProducts()[index].title,
        )),

        // ... spread operator is used to convert list to widgets
      ],
    );
  }
}


class DemoItemCard extends StatelessWidget {
  const DemoItemCard({
    Key? key,
    required this.title,
    required this.coverImgPath,
  }) : super(key: key);

  final String title;
  final String coverImgPath; // https://picsum.photos/200/300

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(coverImgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 100,
                ),
                // add favorite icon
                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                    onPressed: () {
                      print('Favorite');
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ),
                //add to wishlist icon
                Positioned(
                  top: 5,
                  left: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ),
                // transparent container
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.0), // transparent
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(title),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$ 1000',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // discount
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '10% off',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
