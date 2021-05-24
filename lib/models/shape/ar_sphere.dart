import '../ar_material.dart';
import 'ar_shape.dart';

class ArSphere extends ArShape {
  ArSphere({
    this.radius = 0.5,
    required List<ArMaterial> materials,
  }) : super(
          materials: materials,
        );

  final double radius;

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'radius': radius,
      }..addAll(super.toMap());
}
