import 'package:ananta_house/models/list_item_model.dart';

extension PropertyTypeUI on PropertyType {
  String get label {
    switch (this) {
      case PropertyType.house:
        return 'House';
      case PropertyType.apartment:
        return 'Apartment';
      case PropertyType.villa:
        return 'Villa';
    }
  }
}
