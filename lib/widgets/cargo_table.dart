import 'package:flutter/material.dart';
import '../models/cargo_item.dart';

class CargoTable extends StatelessWidget {
  final List<CargoItem> items;

  const CargoTable({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateProperty.all(Colors.blue[900]),
      headingTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      columns: const [
        DataColumn(label: Text('Код клиента')),
        DataColumn(label: Text('Номер груза')),
        DataColumn(label: Text('Категория товара')),
        DataColumn(label: Text('Количество мест')),
        DataColumn(label: Text('Статус для клиента')),
        DataColumn(label: Text('Комментарий')),
      ],
      rows: items.map((item) {
        return DataRow(
          cells: [
            DataCell(Text(item.clientCode)),
            DataCell(Text(item.cargoNumber)),
            DataCell(Text(item.category)),
            DataCell(Text(item.quantity)),
            DataCell(
              Text(
                item.status,
                style: TextStyle(
                  color: item.status == 'В пути' ? Colors.green : Colors.black,
                ),
              ),
            ),
            DataCell(Text(item.comment, overflow: TextOverflow.ellipsis)),
          ],
        );
      }).toList(),
    );
  }
}
