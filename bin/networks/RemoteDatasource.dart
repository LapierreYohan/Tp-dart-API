import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/CenterData.dart';

final API_URL = "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/covid19-france-lieu-vaccination/records?limit=20";

class RemoteDatasource {
  
  static Future<List<CenterData>> getCenters() async {
    List<CenterData> centers = [];

    try {
      var response = await http.get(Uri.parse(API_URL));
      
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        var results = data['results'];

        for (var centerData in results) {

          CenterData center = CenterData(
            gid: centerData['gid'],
            name: centerData['name'],
            arretePrefNumero: centerData['arrete_pref_numero'],
            vaccineCenterAddressPc: centerData['vaccine_center_address_pc'],
            comArmCode: centerData['com_arm_code'],
            vaccineCenterAddressCity: centerData['vaccine_center_address_city'],
            structureSiren: centerData['structure_siren'],
            structureType: centerData['structure_type'],
            structureCorporateName: centerData['structure_corporate_name'],
            structureAddressPc: centerData['structure_address_pc'],
            structureComArmCode: centerData['structure_com_arm_code'],
            structureAddressCity: centerData['structure_address_city'],
            updateDate: DateTime.tryParse(centerData['update_date'] ?? ''),
            vaccineCenterAccessibility: centerData['vaccine_center_accessibility'],
            openingHourMonday: centerData['opening_hour_monday'],
            openingHourTuesday: centerData['opening_hour_tuesday'],
            openingHourWednesday: centerData['opening_hour_wednesday'],
            openingHourThursday: centerData['opening_hour_thursday'],
            openingHourFriday: centerData['opening_hour_friday'],
            openingHourSaturday: centerData['opening_hour_saturday'],
            openingHourSunday: centerData['opening_hour_sunday'],
            appointementAccess: centerData['appointement_access'],
            closingDate: DateTime.tryParse(centerData['closing_date'] ?? ''),
            openingDate: DateTime.tryParse(centerData['opening_date'] ?? ''),
            appointementUrl: centerData['appointement_url'],
            appointementPhone: centerData['appointement_phone'],
            rdvTel2: centerData['rdv_tel2'],
            appointementModalities: centerData['appointement_modalities'],
            preVaccination: centerData['pre_vaccination'],
            centreSviRepondeur: centerData['centre_svi_repondeur'],
            reserveProfessionelsSante: centerData['reserve_professionels_sante'],
            centreType: List<String>.from(centerData['centre_type'] ?? []),
            geoPoint2d: centerData['geo_point_2d'] != null
                ? GeoPoint2D(
                    lon: centerData['geo_point_2d']['lon'] ?? 0.0,
                    lat: centerData['geo_point_2d']['lat'] ?? 0.0,
                  )
                : null,
            vaccineCenterAddress: centerData['vaccine_center_address'],
            structureAddress: centerData['structure_address'],
            regCode: centerData['reg_code'],
            regName: centerData['reg_name'],
            depCode: centerData['dep_code'],
            depName: centerData['dep_name'],
            epciCode: centerData['epci_code'],
            epciName: centerData['epci_name'],
            comArmName: centerData['com_arm_name'],
            comArmAreaCode: centerData['com_arm_area_code'],
          );
          centers.add(center);
        }
      } else {
        print("Erreur lors de la récupération des centres: ${response.statusCode}");
      }
    } catch (e) {
      print("Erreur: $e");
    }

    return centers;
  }
}