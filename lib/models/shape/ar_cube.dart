import 'package:vector_math/vector_math_64.dart';

import '../../utils/vector_utils.dart';
import '../ar_material.dart';
import 'ar_shape.dart';

class ArCoreCube extends ArShape {
  ArCoreCube({
    required this.size,
    required List<ArMaterial> materials,
  }) : super(
          materials: materials,
        );

  final Vector3 size;

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'size': convertVector3ToMap(this.size),
      }..addAll(super.toMap());
}
