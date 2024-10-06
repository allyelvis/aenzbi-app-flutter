import 'package:http/http.dart' as http;

class PosService {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://your-api-url/products'));
    if (response.statusCode == 200) {
      // Parse and return products
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> createInvoice(Invoice invoice) async {
    final response = await http.post(
      Uri.parse('https://your-api-url/invoices'),
      headers: {'Content-Type': 'application/json'},
      body: invoice.toJson(), // Convert invoice to JSON
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create invoice');
    }
  }
}
