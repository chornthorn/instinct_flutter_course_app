import 'package:flutter/material.dart';

class AboutListViewWidget extends StatefulWidget {
  const AboutListViewWidget({Key? key}) : super(key: key);

  @override
  State<AboutListViewWidget> createState() => _AboutListViewWidgetState();
}

class _AboutListViewWidgetState extends State<AboutListViewWidget> {
  var courses = ['Flutter', 'React Native', 'Kotlin', 'SwiftUI'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About ListView'),
      ),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: const Icon(Icons.map),
      //       title: const Text('Map'),
      //       subtitle: const Text(
      //           'Map is a widget that displays a scrollable two-dimensional array of widgets.'),
      //       trailing: const Icon(Icons.arrow_forward_ios),
      //       onTap: () {},
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.map),
      //       title: const Text('Map'),
      //       subtitle: const Text(
      //           'Map is a widget that displays a scrollable two-dimensional array of widgets.'),
      //       trailing: const Icon(Icons.arrow_forward_ios),
      //       onTap: () {},
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: 50,
      //   itemBuilder: (context, index) {
      //     print("visible index $index");
      //     return ListTile(
      //       title: Text('List Item $index'),
      //     );
      //   },
      // ),
      body: ListView.separated(
        itemCount: Product.getProducts().length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Product.getProducts()[index].name),
            subtitle: Text(
                Product.getProducts()[index].description ?? 'No description'),
            trailing: Text(
              "\$${Product.getProducts()[index].price}",
              style: const TextStyle(color: Colors.red),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                Product.getProducts()[index].imagePath,
              ),
            ),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => ProductDetailPage(
              //     title: Product.getProducts()[index].name,
              //     price: Product.getProducts()[index].price,
              //     imagePath: Product.getProducts()[index].imagePath,
              //     description: Product.getProducts()[index].description ?? '',
              //   ),
              // );
              // Navigator.push(context, route);
              Navigator.pushNamed(
                context,
                '/product_detail',
                arguments: Product.getProducts()[index],
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
            height: 1,
          );
        },
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Product Detail'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Cover Image
            Image.network(
              product.imagePath,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Product Name: ${product.name}',
              style: Theme.of(context).textTheme.headline6,
            ),
            // Product Price
            Text(
              '\$ ${product.price}',
              style: Theme.of(context).textTheme.headline6,
            ),
            // Product Description
            Text(
              'Product Description: ${product.description}',
              style: Theme.of(context).textTheme.bodyText1,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                label: 'Add to Cart',
                onPressed: () {
                  print('Add to Cart');
                },
                icon: Icons.add_shopping_cart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Product model
class Product {
  final String name;
  final String? description;
  final double price;
  final String imagePath;

  Product({
    required this.name,
    this.description,
    required this.price,
    required this.imagePath,
  });

  // Mock data or dummy data or fake data
  static List<Product> getProducts() {
    return [
      Product(
        name: 'Apple',
        description: 'Apple is a fruit',
        price: 1.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Banana',
        description: 'Banana is a fruit',
        price: 2.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Orange',
        description: 'Orange is a fruit',
        price: 3.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Strawberry',
        description: 'Strawberry is a fruit',
        price: 4.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Watermelon',
        description: null,
        price: 5.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Pineapple',
        description: 'Pineapple is a fruit',
        price: 6.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Mango',
        description: 'Mango is a fruit',
        price: 7.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Grapes',
        description: 'Grapes is a fruit',
        price: 8.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Pomegranate',
        description: 'Pomegranate is a fruit',
        price: 9.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Papaya',
        description: 'Papaya is a fruit',
        price: 10.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Guava',
        description: 'Guava is a fruit',
        price: 11.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Lemon',
        description: 'Lemon is a fruit',
        price: 12.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
      Product(
        name: 'Kiwi',
        description: 'Kiwi is a fruit',
        price: 13.99,
        imagePath: 'http://picsum.photos/200/300',
      ),
    ];
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      required this.icon})
      : super(key: key);
  final String label;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(
            width: 10,
          ),
          Text(label),
        ],
      ),
    );
  }
}
