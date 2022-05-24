import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel(
    this.id,
    this.name,
    this.phone,
  );
}

class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);
  List<UserModel> users = [
    UserModel(1, 'philo', '01270036276'),
    UserModel(2, 'Emad', '01484512252'),
    UserModel(3, 'Beshoy', '0151251415'),
    UserModel(4, 'John', '015695296269'),
    UserModel(1, 'philo', '01270036276'),
    UserModel(2, 'Emad', '01484512252'),
    UserModel(3, 'Beshoy', '0151251415'),
    UserModel(4, 'John', '015695296269'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
          ),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel users) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text(
                '${users.id}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${users.name}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${users.phone}',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
