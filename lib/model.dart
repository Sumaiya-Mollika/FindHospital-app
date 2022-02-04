import 'package:flutter/cupertino.dart';

class Model {
  String? name;
  String? image;
  String? address;
  String? distance;
  int? icu;
  int? ambulance;
  int? doctor;
  int? bloodBank;
  int? bed;

  Model(
      {this.address,
      this.image,
      this.name,
      this.ambulance,
      this.bed,
      this.bloodBank,
      this.distance,
      this.doctor,
      this.icu});
}
