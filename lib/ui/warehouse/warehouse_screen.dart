import 'package:cargo/widgets/draweer_menu.dart';
import 'package:cargo/widgets/user_profile_info.dart';
import 'package:cargo/widgets/warehouse_table.dart';
import 'package:flutter/material.dart';


class WarehouseScreen extends StatelessWidget {
  const WarehouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Грузы на складе в Китае'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        actions:  [
          UserProfileInfo( name: 'Александр Прокофьев',
      role: 'Супер Админ',),
        ],
      ),
      body: const WarehouseTable(),
    );
  }
}
