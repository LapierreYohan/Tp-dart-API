class CenterData {
  String? gid;
  String? name;
  String? arretePrefNumero;
  String? vaccineCenterAddressPc;
  String? comArmCode;
  String? vaccineCenterAddressCity;
  String? structureSiren;
  String? structureType;
  String? structureCorporateName;
  String? structureAddressPc;
  String? structureComArmCode;
  String? structureAddressCity;
  DateTime? updateDate;
  String? vaccineCenterAccessibility;
  String? openingHourMonday;
  String? openingHourTuesday;
  String? openingHourWednesday;
  String? openingHourThursday;
  String? openingHourFriday;
  String? openingHourSaturday;
  String? openingHourSunday;
  String? appointementAccess;
  DateTime? closingDate;
  DateTime? openingDate;
  String? appointementUrl;
  String? appointementPhone;
  String? rdvTel2;
  String? appointementModalities;
  String? preVaccination;
  String? centreSviRepondeur;
  String? reserveProfessionelsSante;
  List<String>? centreType;
  GeoPoint2D? geoPoint2d;
  String? vaccineCenterAddress;
  String? structureAddress;
  String? regCode;
  String? regName;
  String? depCode;
  String? depName;
  String? epciCode;
  String? epciName;
  String? comArmName;
  String? comArmAreaCode;

  CenterData({
    this.gid,
    this.name,
    this.arretePrefNumero,
    this.vaccineCenterAddressPc,
    this.comArmCode,
    this.vaccineCenterAddressCity,
    this.structureSiren,
    this.structureType,
    this.structureCorporateName,
    this.structureAddressPc,
    this.structureComArmCode,
    this.structureAddressCity,
    this.updateDate,
    this.vaccineCenterAccessibility,
    this.openingHourMonday,
    this.openingHourTuesday,
    this.openingHourWednesday,
    this.openingHourThursday,
    this.openingHourFriday,
    this.openingHourSaturday,
    this.openingHourSunday,
    this.appointementAccess,
    this.closingDate,
    this.openingDate,
    this.appointementUrl,
    this.appointementPhone,
    this.rdvTel2,
    this.appointementModalities,
    this.preVaccination,
    this.centreSviRepondeur,
    this.reserveProfessionelsSante,
    this.centreType,
    this.geoPoint2d,
    this.vaccineCenterAddress,
    this.structureAddress,
    this.regCode,
    this.regName,
    this.depCode,
    this.depName,
    this.epciCode,
    this.epciName,
    this.comArmName,
    this.comArmAreaCode,
  });
}

class GeoPoint2D {
  double? lon;
  double? lat;

  GeoPoint2D({this.lon, this.lat});
}
