import '../ar_material.dart';
import 'ar_shape.dart';

class ArCoreCylinder extends ArShape {
  ArCoreCylinder({
    this.radius = 0.5,
    this.height = 1.0,
    required List<ArMaterial> materials,
  }) : super(
          materials: materials,
        );

  final double height;
  final double radius;

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'height': this.radius,
        'radius': this.height,
      }..addAll(super.toMap());
}
