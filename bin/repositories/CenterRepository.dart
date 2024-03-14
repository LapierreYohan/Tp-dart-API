import '../networks/RemoteDatasource.dart';

import '../models/CenterData.dart';
import '../entities/CenterEntity.dart';


class CenterRepository {
  
  static Future<List<CenterEntity>> getCenters() async {
    var response = await RemoteDatasource.getCenters();

    List<CenterEntity> centers = response.map((e) => CenterEntity(
      gid: e.gid,
      name: e.name,
      depCode: e.depCode,
      depName: e.depName,
    )).toList();

    return centers;
  }
  
}