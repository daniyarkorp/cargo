import '../models/cargo_item.dart';

final mockCargoItems = List.generate(10, (index) {
  return CargoItem(
    clientCode: '12345678',
    cargoNumber: '12345678',
    category: index % 2 == 0 ? 'Одежда' : 'Обувь',
    quantity: '10/10',
    status: index % 3 == 0 ? 'В пути' : 'На складе в Китае',
    comment: 'есть стеклянные посуды сделанные...',
  );
});
