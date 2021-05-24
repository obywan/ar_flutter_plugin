import 'package:flutter/widgets.dart';

import '../ar_material.dart';

abstract class ArShape {
  ArShape({required List<ArMaterial> materials})
      : materials = ValueNotifier(materials);

  final ValueNotifier<List<ArMaterial>> materials;

  Map<String, dynamic> toMap() => <String, dynamic>{
        'dartType': runtimeType.toString(),
        'materials': materials != null
            ? materials.value.map((m) => m.toMap()).toList()
            : null,
      }..removeWhere((String k, dynamic v) => v == null);
}
