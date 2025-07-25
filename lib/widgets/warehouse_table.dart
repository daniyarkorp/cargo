import 'package:flutter/material.dart';

class WarehouseTable extends StatelessWidget {
  const WarehouseTable({super.key});

  @override
  Widget build(BuildContext context) {
    final rows = List.generate(8, (index) => _buildRow(index));

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          // Поисковая строка + кнопка
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Введите номер груза',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF19255A),
                  side: const BorderSide(color: Color(0xFF19255A)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Добавить груз'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Таблица
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.hardEdge,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 28,
                  headingRowColor:
                      MaterialStateProperty.all(const Color(0xFF19255A)),
                  headingTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  columns: const [
                    DataColumn(label: Text('Код клиента')),
                    DataColumn(label: Text('Номер груза')),
                    DataColumn(label: Text('Категория товара')),
                    DataColumn(label: Text('Количество мест')),
                    DataColumn(label: Text('Статус')),
                    DataColumn(label: Text('Комментарий')),
                    DataColumn(label: Text('')),
                  ],
                  rows: rows,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Пагинация
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              final isCurrent = index == 3;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor:
                      isCurrent ? const Color(0xFF19255A) : Colors.grey[300],
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: isCurrent ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  DataRow _buildRow(int index) {
    final colors = [
      Colors.transparent,
      const Color(0xFFE5EFFB),
    ];
    final isEven = index.isEven;

    return DataRow(
      color: MaterialStateProperty.all(colors[index % 2]),
      cells: const [
        DataCell(Text('12345678')),
        DataCell(Text('12345678')),
        DataCell(Text('Мебель')),
        DataCell(Text('10/10')),
        DataCell(Text(
          'В пути',
          style: TextStyle(color: Colors.green),
        )),
        DataCell(
          Text(
            'есть стеклянные посуды сделанн...',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        DataCell(
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.remove_red_eye, size: 18),
              SizedBox(width: 8),
              Icon(Icons.edit, size: 18),
              SizedBox(width: 8),
              Icon(Icons.delete, size: 18),
            ],
          ),
        ),
      ],
    );
  }
}
