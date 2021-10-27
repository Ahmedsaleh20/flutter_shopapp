import 'package:flutter/material.dart';
import 'package:flutter_shopapp/Widgets/Product_Detailed_Screen.dart';

class ProductItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => ProductDetailScreen(title)));
          },
          child: Image.network(
            imageUrl!,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          title: Text(
            title!,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black26,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).accentColor,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
