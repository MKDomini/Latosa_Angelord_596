import 'package:supabase_flutter/supabase_flutter.dart' hide User;

class Product {
  final int id;
  final String name;
  final double price;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      price: (map['price'] ?? 0).toDouble(),
      quantity: map['quantity'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }
}

class ProductController {
  final supabase = Supabase.instance.client;
  
  Future<List<Product>> getProduct() async {
    final data = await supabase.from('products').select();
    return data.map((item) => Product.fromMap(item)).toList();
  }

  Future<void> addProduct(Product product) async {
    await supabase.from('products').insert(product.toMap());
  }


  Future<void> deleteProduct(int id) async {
    await supabase.from('products').delete().eq('id', id);
  }
  //calculate grand total

    double calculateGrandTotal(List<Product> product){
      double total = 0;
      for (var product in product) {
        total += product.price * product.quantity;
      }
      return total;
    }
    // total items

    int countTotalItems(List<Product> product) {
      int count = 0;
      for (var product in product) {
        count += product.quantity;
      }
      return count;
    }
}

