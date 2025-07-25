import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 220,
      child: Container(
        color: Colors.white, // ← белый фон
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: 200,
                height: 100,

                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo_cargo.png',
                  height: 360,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 32),
            _buildMenuItem(Icons.local_shipping, 'Грузы'),
            _buildMenuItem(Icons.warehouse, 'На складе в Китае'),
            _buildMenuItem(Icons.all_inbox, 'Сортировка'),
            _buildMenuItem(Icons.send, 'Отправки'),
            _buildMenuItem(Icons.inventory, 'Посылки'),
            const SizedBox(height: 24),
            const Divider(color: Colors.grey),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.black),
              title: const Text('Выход', style: TextStyle(color: Colors.black)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: Icon(icon, color: Colors.black87, size: 20), // ← иконка чёрная
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black87, // ← текст тёмный
          fontSize: 14,
        ),
      ),
      onTap: () {},
    );
  }
}
