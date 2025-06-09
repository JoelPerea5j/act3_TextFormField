import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String productName;
  final String idProduct;
  final String idSucursal;
  final String precio;
  final String marca;
  final String stock;
  final String tipo;
  final String fechaCreacion;

  const Details({Key? key,
    required this.productName,
    required this.idProduct,
    required this.idSucursal,
    required this.precio,
    required this.marca,
    required this.stock,
    required this.tipo,
    required this.fechaCreacion,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text('Nombre del producto: $productName'),
          ),
          ListTile(
            leading: const Icon(Icons.qr_code),
            title: Text('ID Producto: $idProduct'),
          ),
          ListTile(
            leading: const Icon(Icons.store),
            title: Text('ID Sucursal: $idSucursal'),
          ),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text('Precio: $precio'),
          ),
          ListTile(
            leading: const Icon(Icons.branding_watermark),
            title: Text('Marca: $marca'),
          ),
          ListTile(
            leading: const Icon(Icons.inventory),
            title: Text('Stock: $stock'),
          ),
          ListTile(
            leading: const Icon(Icons.branding_watermark),
            title: Text('tipo: $tipo'),
          ),
          ListTile(
            leading: const Icon(Icons.inventory),
            title: Text('fechaCreacion: $fechaCreacion'),
          ),
        ],
      ),
    );
  }
}
