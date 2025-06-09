import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productController = TextEditingController();
  final _idProductController = TextEditingController();
  final _idSucursalController = TextEditingController();
  final _precioController = TextEditingController();
  final _marcaController = TextEditingController();
  final _stockController = TextEditingController();
  final _TipoProducController = TextEditingController();
  final _FechaCreacionController = TextEditingController();

  @override
  void dispose() {
    _productController.dispose();
    _idProductController.dispose();
    _idSucursalController.dispose();
    _precioController.dispose();
    _marcaController.dispose();
    _stockController.dispose();
    _TipoProducController.dispose();
    _FechaCreacionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Form"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _productController,
              decoration: const InputDecoration(
                labelText: "Product name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5.0),
            TextFormField(
              controller: _idProductController,
              decoration: const InputDecoration(
                labelText: "Id Product",
                prefixIcon: Icon(Icons.qr_code),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5.0),
            TextFormField(
              controller: _idSucursalController,
              decoration: const InputDecoration(
                labelText: "Id Sucursal",
                prefixIcon: Icon(Icons.store),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5.0),
            TextFormField(
              controller: _precioController,
              decoration: const InputDecoration(
                labelText: "Precio",
                prefixIcon: Icon(Icons.attach_money),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5.0),
            TextFormField(
              controller: _marcaController,
              decoration: const InputDecoration(
                labelText: "Marca",
                prefixIcon: Icon(Icons.branding_watermark),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5.0),
            TextFormField(
              controller: _stockController,
              decoration: const InputDecoration(
                labelText: "Stock",
                prefixIcon: Icon(Icons.inventory),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5.0),
            TextFormField(
              controller: _TipoProducController,
              decoration: const InputDecoration(
                labelText: "Tipo Product",
                prefixIcon: Icon(Icons.branding_watermark),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5.0),
            TextFormField(
              controller: _FechaCreacionController,
              decoration: const InputDecoration(
                labelText: "Fecha creacion",
                prefixIcon: Icon(Icons.inventory),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Details(
                        productName: _productController.text,
                        idProduct: _idProductController.text,
                        idSucursal: _idSucursalController.text,
                        precio: _precioController.text,
                        marca: _marcaController.text,
                        stock: _stockController.text,
                        tipo: _TipoProducController.text,
                        fechaCreacion: _FechaCreacionController.text,
                      );
                    },
                  ),
                );
              },
              child: Text(
                "Enviar formulario".toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
