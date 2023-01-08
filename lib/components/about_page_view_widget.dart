import 'package:flutter/material.dart';

class OnboadingModel {
  final String title;
  final String? description;
  final String image;

  OnboadingModel({
    required this.title,
    this.description,
    required this.image,
  });

  static List<OnboadingModel> onboadingList = [
    OnboadingModel(
      title: 'Welcome to the app',
      description: 'This is a description of the app',
      image: 'https://picsum.photos/200/300',
    ),
    OnboadingModel(
      title: 'Welcome to the app 2',
      description: 'This is a description of the app',
      image: 'https://picsum.photos/200/300',
    ),
    OnboadingModel(
      title: 'Welcome to the app 3',
      description: 'This is a description of the app',
      image: 'https://picsum.photos/200/300',
    ),
  ];
}

class AboutPageViewWidget extends StatefulWidget {
  const AboutPageViewWidget({Key? key}) : super(key: key);

  @override
  State<AboutPageViewWidget> createState() => _AboutPageViewWidgetState();
}

class _AboutPageViewWidgetState extends State<AboutPageViewWidget> {
  int _currentPage = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  print('Page changed to index $index');
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: OnboadingModel.onboadingList.length,
                itemBuilder:(context,index){
                  return Container(
                    color: Colors.red,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(OnboadingModel.onboadingList[index].title),
                        Text(OnboadingModel.onboadingList[index].description ?? ''),
                        Image.network(OnboadingModel.onboadingList[index].image),
                      ],
                    ),
                  );
                }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < OnboadingModel.onboadingList.length; i++)
                  if (i == _currentPage)
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    )
                  else
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_currentPage < OnboadingModel.onboadingList.length - 1) {
            _pageController.animateToPage(
              _currentPage + 1,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
            );
          } else {
            _pageController.animateToPage(
              0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          }
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
