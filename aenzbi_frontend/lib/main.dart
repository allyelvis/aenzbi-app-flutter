import 'package:flutter/material.dart';
import 'services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi Digital Bank',
      home: UserList(),
    );
  }
}

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  late Future<List<dynamic>> users;

  @override
  void initState() {
    super.initState();
    users = ApiService().getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: FutureBuilder<List<dynamic>>(
        future: users,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            List<dynamic> usersData = snapshot.data!;
            return ListView.builder(
              itemCount: usersData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(usersData[index]['username']),
                  subtitle: Text(usersData[index]['email']),
                );
              },
            );
          }
          return Center(child: Text('No data found'));
        },
      ),
    );
  }
}
