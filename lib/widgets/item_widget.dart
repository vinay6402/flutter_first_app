import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //cardview
      elevation: 10.0,
      child: ListTile(
        onTap: () {
          print("${item.name}");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "₹" + item.price.toString(),
          textScaleFactor: 1.6,
        ),
      ),
    );
  }
}
