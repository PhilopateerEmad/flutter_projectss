import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
          ),
          title: const Text('first'),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notification_important,
              ),
              onPressed: () {
                print('noti');
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {
                print('search');
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Image(
                      image: NetworkImage(
                        'https://i0.wp.com/brooklynintergroup.org/brooklyn/wp-content/uploads/2021/01/flower-729512__340-1.jpg?w=513&ssl=1',
                      ),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      //width: 200.0,
                      color: Colors.black.withOpacity(0.3),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      child: const Text(
                        'Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
