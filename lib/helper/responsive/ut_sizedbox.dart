import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'size_extension.dart';

class UTSizedBox extends SizedBox {
  const UTSizedBox({
    super.key,
    super.height,
    super.width,
    super.child,
  }) : _square = false;

  const UTSizedBox.vertical(
    double? height, {
    super.key,
    super.child,
  })  : _square = false,
        super(height: height);

  const UTSizedBox.horizontal(
    double? width, {
    super.key,
    super.child,
  })  : _square = false,
        super(width: width);

  const UTSizedBox.square({
    super.key,
    double? height,
    super.dimension,
    super.child,
  })  : _square = true,
        super.square();

  UTSizedBox.fromSize({
    super.key,
    super.size,
    super.child,
  })  : _square = false,
        super.fromSize();

  @override
  RenderConstrainedBox createRenderObject(BuildContext context) {
    return RenderConstrainedBox(
      additionalConstraints: _additionalConstraints,
    );
  }

  final bool _square;

  BoxConstraints get _additionalConstraints {
    final boxConstraints =
        BoxConstraints.tightFor(width: width, height: height);
    return _square ? boxConstraints.r : boxConstraints.hw;
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderConstrainedBox renderObject) {
    renderObject.additionalConstraints = _additionalConstraints;
  }
}
