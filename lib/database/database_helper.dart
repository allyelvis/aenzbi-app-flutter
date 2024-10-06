import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'aenzbi_app.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE business(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        name TEXT NOT NULL, 
        description TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE financial(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        type TEXT NOT NULL, 
        amount REAL NOT NULL
      )
    ''');
    // Add more tables as needed for other modules
  }

  Future<int> insert(String table, Map<String, dynamic> data) async {
    final db = await database;
    return db.insert(table, data);
  }

  Future<List<Map<String, dynamic>>> queryAllRows(String table) async {
    final db = await database;
    return db.query(table);
  }

  Future<int> update(String table, Map<String, dynamic> data, String whereClause, List<dynamic> whereArgs) async {
    final db = await database;
    return db.update(table, data, where: whereClause, whereArgs: whereArgs);
  }

  Future<int> delete(String table, String whereClause, List<dynamic> whereArgs) async {
    final db = await database;
    return db.delete(table, where: whereClause, whereArgs: whereArgs);
  }
}
