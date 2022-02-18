import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class CategoryRemoteDataSource {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final String collectionName = 'categories';

  Future<Either<Exception, dynamic>> getCategory() async {
    var result = await firestore.collection(collectionName).get();
    if (result.docs.isEmpty) {
      return Left(Exception('Data is Empty'));
    } else {
      result.docs.forEach((res) {
        log(res.data().toString());
      });
      return Right(result.docs);
    }
  }
}
