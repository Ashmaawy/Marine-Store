import '../models/carousel_slider.dart';
import '../models/category.dart';
import '../models/product.dart';
import '../services/firestore_services.dart';
import '../utilities/firebase_collections_path.dart';

abstract class DatabaseController {
  Stream<List<CarouselSliderModel>> getCarouselSliderImagesStream();

  Stream<List<CategoryModel>> getCategoryStream();

  Stream<List<ProductModel>> getAdminProductsStream();

  Stream<List<ProductModel>> getAllProductsStream();

  Stream<List<ProductModel>> getCategoryProductsStream(String category);

}

class FireStoreDataBase implements DatabaseController {
  final _service = FirestoreServices.instance;

  @override
  Stream<List<CarouselSliderModel>> getCarouselSliderImagesStream() =>
      _service.collectionsStream(
        path: FirebaseCollectionPath.carousel(),
        builder: (data, documentId) =>
            CarouselSliderModel.fromMap(data!, documentId),
      );

  @override
  Stream<List<CategoryModel>> getCategoryStream() => _service.collectionsStream(
        path: FirebaseCollectionPath.category(),
        builder: (data, documentId) => CategoryModel.fromMap(data!, documentId),
      );

  @override
  Stream<List<ProductModel>> getAdminProductsStream() =>
      _service.collectionsStream(
        path: FirebaseCollectionPath.getAdminProducts(),
        builder: (data, documentId) => ProductModel.fromMap(data!, documentId),
      );

  @override
  Stream<List<ProductModel>> getAllProductsStream() =>
      _service.collectionsStream(
        path: FirebaseCollectionPath.getAllProducts(),
        builder: (data, documentId) => ProductModel.fromMap(data!, documentId),
      );

  @override
  Stream<List<ProductModel>> getCategoryProductsStream(String category) =>
      _service.collectionsStream(
        path: FirebaseCollectionPath.getAllProducts(),
        builder: (data, documentId) => ProductModel.fromMap(data!, documentId),
        queryBuilder: (query) => query.where('category', isEqualTo: category),
      );
}