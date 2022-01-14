import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _productList = [
    Product(
        productId: '001',
        name: 'Lichi',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '',
        imageUrl:
            'https://images.unsplash.com/photo-1574856344991-aaa31b6f4ce3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80',
        productDetails: 'Fruits'),
    Product(
        productId: '002',
        name: 'Apple',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: 'Pomegranate',
        imageUrl:
            'https://post.healthline.com/wp-content/uploads/2021/05/apples-732x549-thumbnail.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '003',
        name: 'Dragon fruits',
        price: 450.0,
        discount: 30.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Sony',
        warrenty: '5 years',
        imageUrl:
            'https://www.foodsafetynews.com/files/2022/01/dreamstime_dragon-fruit.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '004',
        name: 'Mango',
        price: 450.0,
        discount: 30.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '',
        imageUrl:
            'https://5.imimg.com/data5/AG/SN/MY-38125843/raw-mango-250x250.jpg',
        productDetails: 'Mango'),
    Product(
        productId: '005',
        name: 'Papaya',
        price: 450.0,
        discount: 30.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '0',
        imageUrl:
            'https://cdn.britannica.com/31/157531-050-25D8087E/Papaya-fruit.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '006',
        name: 'Jackfruits',
        price: 350.0,
        discount: 30.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'unknown',
        warrenty: '0',
        imageUrl:
            'https://assets.lybrate.com/q_auto:eco,f_auto,w_1200,h_720,c_fill,g_auto/imgs/product/health-wiki/bpages/Benefits-of-Jackfruit.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '007',
        name: 'Grapes',
        price: 100.0,
        discount: 10.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '0',
        imageUrl:
            'https://static.wixstatic.com/media/d087c2_246451e3226c48b78770031214a6d04d~mv2.jpg/v1/fill/w_498,h_332,al_c,q_85,usm_0.66_1.00_0.01/d087c2_246451e3226c48b78770031214a6d04d~mv2.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '008',
        name: 'Orange',
        price: 650.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'unknown',
        warrenty: '2 years',
        imageUrl:
            'https://spicesandpisces.files.wordpress.com/2012/12/komlalebu_1.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '009',
        name: 'Jamrul',
        price: 550.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://thumbs.dreamstime.com/z/fresh-jamrul-fruit-isolated-white-background-41842554.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '010',
        name: 'Amra',
        price: 650.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://albeliz.com/wp-content/uploads/2021/08/amra-fruit.jpg',
        productDetails: 'Fruits'),
    Product(
        productId: '011',
        name: 'Kamranga',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://lh5.googleusercontent.com/proxy/Rd8OM5YO_nFkGKEXuAKBTowD2unQ4z3VuivNro4gFpmFjNwsu-zAw8GbUaVhhpxfEKQmTYz199DNSg=w1200-h630-p-k-no-nu',
        productDetails: 'Fruits'),
    Product(
        productId: '012',
        name: 'Tormuj',
        price: 350.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fruits',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://chaldn.com/_mpimage/watermelon-medium-4-kg-tormuj-1-pcs?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D34711&q=low&v=1',
        productDetails: 'Old Refrigerator'),
    Product(
        productId: '013',
        name: 'Potato',
        price: 850.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://5.imimg.com/data5/HC/NI/JV/SELLER-50068616/fresh-potato-250x250.jpg',
        productDetails: 'Vegetable'),
    Product(
        productId: '014',
        name: 'Lau',
        price: 550.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://www.shahigrocery.com/image/cache/catalog/product/bengali%20squash-700x700.jpg',
        productDetails: 'Vegetable'),
    Product(
        productId: '015',
        name: 'Snake Gourd',
        price: 350.0,
        discount: 20.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'http://primegroci.com/wp-content/uploads/2018/12/snake-gourd.jpg',
        productDetails: 'Vegetable'),
    Product(
        productId: '016',
        name: 'Onion',
        price: 450.0,
        discount: 20.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://banasreemart.com/wp-content/uploads/2020/08/onion-imported-1-kg.png',
        productDetails: 'Vegetable'),
    Product(
        productId: '017',
        name: 'Green Chili',
        price: 450.0,
        discount: 20.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://sostabazaar.com/wp-content/uploads/2020/07/green-chilli-wm-1.jpg',
        productDetails: 'Vegetable'),
    Product(
        productId: '018',
        name: 'Dried Chili',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.othoba.com/images/thumbs/0069554_vegetable-naga-chili.jpeg',
        productDetails: 'Vegetable'),
    Product(
        productId: '019',
        name: 'Garlic',
        price: 200.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://easybazar24.com/wp-content/uploads/2020/03/liros-rosun-smal.jpg',
        productDetails: 'Vegetable'),
    Product(
        productId: '020',
        name: 'Ginger',
        price: 200.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Vegetable',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://sanikamart.com/storage/thumbnail/deshi-ada-ginger-local-500gm.jpg',
        productDetails: 'Vegetable'),
    Product(
        productId: '021',
        name: 'Broiler Meat',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Meat',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://masmangsho.com/wp-content/uploads/2016/05/chicken-off-4.png',
        productDetails: 'Meat'),
    Product(
        productId: '022',
        name: 'Beef',
        price: 300.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Meat',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://nabilagro.com/wp-content/uploads/2020/04/Beef-bone-in-gorur-mangso-har-soho-gosto-1kg.jpg',
        productDetails: 'Beef'),
    Product(
        productId: '023',
        name: 'Mutton',
        price: 350.0,
        discount: 30.0,
        categoryName: 'Food',
        subCategoryName: 'Meat',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://fishvish.com/wp-content/uploads/2021/04/mutton-chops.jpg',
        productDetails: 'Mutton'),
    Product(
        productId: '024',
        name: 'Katol Fish',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl: 'https://shop-bd.com/wp-content/uploads/2019/03/katol.jpg',
        productDetails: 'Katol Fish'),
    Product(
        productId: '025',
        name: 'Hilsha',
        price: 150.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://www.belaamie.com/wp-content/uploads/2020/06/Hilish-600x600-2-300x300.jpg',
        productDetails: 'Fish'),
    Product(
        productId: '026',
        name: 'Rui Fish',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://www.beshideshi.com/wp-content/uploads/2019/06/RuiFish.jpg',
        productDetails: 'Fresh Fish'),
    Product(
        productId: '027',
        name: 'Puti',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://www.shodagor.com/wp-content/uploads/2021/08/33-6.jpg',
        productDetails: 'Fresh Condition'),
    Product(
        productId: '028',
        name: 'Grass Carp',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://cdn.britannica.com/32/137232-050-28E7939C/Grass-carp.jpg',
        productDetails: 'Forzen Condition'),
    Product(
        productId: '029',
        name: 'Tilapia',
        price: 150.0,
        discount: 20.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://jarlimited.com/wp-content/uploads/2020/06/Tilapia-fish.jpg',
        productDetails: 'Best '),
    Product(
        productId: '030',
        name: 'Pangas',
        price: 120.0,
        discount: 20.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://www.upoharbd.com/images/uploads/Grocery/fish_pangas..jpg',
        productDetails: 'Fresh'),
    Product(
        productId: '031',
        name: 'Koi Fish',
        price: 250.0,
        discount: 50.0,
        categoryName: 'Food',
        subCategoryName: 'Fish',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl: 'https://www.kablewala.com.bd/images/detailed/186/29.jpeg',
        productDetails: 'Best'),
  ];
  int _crossAxisCount = 2;
  double _expandedHeight = 280;
  double _imageHeight = 160;
  int get crossAxisCounts => _crossAxisCount;
  double get expandedHeight => _expandedHeight;
  double get imageHeight => _imageHeight;
  set setAxis(int data) {
    _crossAxisCount = data;
    notifyListeners();
  }

  set setexpandedHeight(double data) {
    _expandedHeight = data;
    notifyListeners();
  }

  set setImageHeight(double data) {
    _imageHeight = data;
    notifyListeners();
  }

  String? _searchString;
  set setSearchString(String data) {
    _searchString = data;
    notifyListeners();
  }

  get getsearchString => _searchString;

  UnmodifiableListView<Product> get products => _searchString == null
      ? UnmodifiableListView(_productList)
      : UnmodifiableListView(_productList.where(
          (element) =>
              element.name
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.brandName
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.discount
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()),
        ));
}
