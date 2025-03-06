import 'package:flutter_svg/flutter_svg.dart';

class ServiceCategoryModel {
  final int id;
  final String name;
  final SvgPicture serviceCategory;

  ServiceCategoryModel(
      {required this.id, required this.name, required this.serviceCategory});

  factory ServiceCategoryModel.fromJson(Map<String, dynamic> json) {
    return ServiceCategoryModel(
      id: json['id'],
      name: json['name'],
      serviceCategory: json['serviceCategory'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'serviceCategory': serviceCategory,
      };
}
