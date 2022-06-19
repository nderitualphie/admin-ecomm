import 'package:admin_dashboard/model/ordermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ProductProvider with ChangeNotifier {
  List<Ordermodel> feature = [];
  late Ordermodel featuredata;
  Future<void> getfeaturedata() async {
    List<Ordermodel> newlist = [];
    QuerySnapshot featuresnapshot =
        await FirebaseFirestore.instance.collection('Order').get();
    featuresnapshot.docs.forEach((element) {
      featuredata = Ordermodel(
        userAdress: element.data().toString().contains('userAdress')
            ? element["userAddress"]
            : '',
        phone: element.data().toString().contains('userPhone')
            ? element["userPhone"]
            : '',
        email: element.data().toString().contains('Useremail')
            ? element["Useremail"]
            : '',
        productquantity: element.data().toString().contains('ProductQuantity')
            ? element["ProductQuantity"]
            : '',
        productname: element.data().toString().contains('ProductName')
            ? element['ProductName']
            : '',
        amount: element.data().toString().contains('TotalAmount')
            ? element['TotalAmount']
            : 0,
      );
      newlist.add(featuredata);
    });

    feature = newlist;
    //notifyListeners();
  }

  List<Ordermodel> get getfeaturelist {
    return feature;
  }
}
