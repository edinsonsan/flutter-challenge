import 'package:flutter_challenge/infrastructure/datasources/drift_datasource.dart';
import 'package:flutter_challenge/infrastructure/repositories/local_storage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(DriftDatasource());
});
