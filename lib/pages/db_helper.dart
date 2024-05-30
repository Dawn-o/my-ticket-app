import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;

  DBHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'bjbfest.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          "CREATE TABLE orders(id INTEGER PRIMARY KEY AUTOINCREMENT, event_name TEXT, ticket_name TEXT, price INTEGER, quantity INTEGER, fullname TEXT, email TEXT, phone_number TEXT, status TEXT)",
        );
        await db.execute(
          "CREATE TABLE tickets(id INTEGER PRIMARY KEY AUTOINCREMENT, photo TEXT, event_name TEXT, location TEXT, date TEXT, open_gate TEXT, address TEXT, ticket_name_1 TEXT, prize_1 TEXT, prize_2 TEXT, prize_3 TEXT, available_1 INTEGER, price_1 INTEGER, ticket_name_2 TEXT, prize_21 TEXT, prize_22 TEXT, prize_23 TEXT, available_2 INTEGER, price_2 INTEGER, ticket_name_3 TEXT, prize_31 TEXT, prize_32 TEXT, prize_33 TEXT, available_3 INTEGER, price_3 INTEGER, status TEXT)",
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion < 2) {
          db.execute("ALTER TABLE tickets ADD COLUMN photo TEXT");
        }
      },
    );
  }

  // ORDER PROCESS
  Future<int> insertOrder(Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert('orders', row);
  }

  Future<List<Map<String, dynamic>>> queryAllOrders() async {
    Database db = await database;
    return await db.query('orders');
  }

  Future<int> updateOrder(Map<String, dynamic> row) async {
    Database db = await database;
    int id = row['id'];
    return await db.update('orders', row, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteOrder(int id) async {
    Database db = await database;
    return await db.delete('orders', where: 'id = ?', whereArgs: [id]);
  }

  // TICKET PROCESS
  Future<int> insertTicket(Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert('tickets', row);
  }

  Future<List<Map<String, dynamic>>> queryAllTickets() async {
    Database db = await database;
    return await db.query('tickets');
  }

  Future<int> updateTicket(Map<String, dynamic> row) async {
    Database db = await database;
    int id = row['id'];
    return await db.update('tickets', row, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteTicket(int id) async {
    Database db = await database;
    return await db.delete('Tickets', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> activeEvent(String status) async {
    Database db = await database;
    return Sqflite.firstIntValue(await db.query(
          'tickets',
          columns: ['COUNT(*)'],
          where: 'status = ?',
          whereArgs: [status],
        )) ??
        0;
  }
}
