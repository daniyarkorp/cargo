import 'package:flutter/material.dart';
import 'ui/warehouse/warehouse_screen.dart';

void main() {
  runApp(const GoldmarkApp());
}

class GoldmarkApp extends StatelessWidget {
  const GoldmarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goldmark Warehouse',
      theme: ThemeData(
        fontFamily: 'Sans',
        useMaterial3: true,
      ),
      home: const WarehouseScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
