import 'package:flutter/material.dart';
import '../database/database_helper.dart';

class BusinessModule extends StatefulWidget {
  @override
  _BusinessModuleState createState() => _BusinessModuleState();
}

class _BusinessModuleState extends State<BusinessModule> {
  final _dbHelper = DatabaseHelper();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  List<Map<String, dynamic>> _businesses = [];

  @override
  void initState() {
    super.initState();
    _fetchBusinesses();
  }

  void _fetchBusinesses() async {
    final data = await _dbHelper.queryAllRows('business');
    setState(() {
      _businesses = data;
    });
  }

  void _addBusiness() async {
    if (_nameController.text.isNotEmpty && _descriptionController.text.isNotEmpty) {
      await _dbHelper.insert('business', {
        'name': _nameController.text,
        'description': _descriptionController.text
      });
      _fetchBusinesses();
      _nameController.clear();
      _descriptionController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Module'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Business Name'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            ElevatedButton(
              onPressed: _addBusiness,
              child: Text('Add Business'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _businesses.length,
                itemBuilder: (context, index) {
                  final business = _businesses[index];
                  return ListTile(
                    title: Text(business['name']),
                    subtitle: Text(business['description']),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
