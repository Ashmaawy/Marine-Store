import 'package:beauty_supplies_project/utilities/constants.dart';

class FirebaseCollectionPath {

  static String carousel() => 'layout_image/';


  static String category() => 'category/';


  static String products() => 'products/';




  static String deliveryMethods() => 'deliveryMethods/';

  static String clientUser(String uid) =>
      'usr/41yKO3ID3jkZkqQtrSbx/client/$uid';

  static String allProducts() => 'usr/41yKO3ID3jkZkqQtrSbx/admin/';

  static String addAdminProduct({
    required String adminId,
    required String newId,
  }) =>
      'usr/41yKO3ID3jkZkqQtrSbx/admin/$adminId/products/$newId';

  static String getAdminProducts() =>
      'usr/41yKO3ID3jkZkqQtrSbx/admin/$userId/products/';

  static String deleteAdminProducts(String id) =>
      'usr/41yKO3ID3jkZkqQtrSbx/admin/$userId/products/$id';

  static String addToCart(String uid, String addToCartId) =>
      'users/$uid/cart/$addToCartId';

  static String myProductsCart(String uid) => 'users/$uid/cart/';
}
