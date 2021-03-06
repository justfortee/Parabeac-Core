import 'package:parabeac_core/input/figma/entities/abstract_figma_node_factory.dart';
import 'package:parabeac_core/input/figma/entities/layers/vector.dart';
import 'package:parabeac_core/input/sketch/entities/objects/frame.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';
import 'package:parabeac_core/interpret_and_optimize/helpers/pb_context.dart';
import 'package:json_annotation/json_annotation.dart';

import 'figma_node.dart';

part 'line.g.dart';

@JsonSerializable(nullable: true)
class FigmaLine extends FigmaVector implements AbstractFigmaNodeFactory {
  @override
  String type = 'LINE';
  FigmaLine({
    String name,
    bool visible,
    String type,
    pluginData,
    sharedPluginData,
    style,
    layoutAlign,
    constraints,
    Frame boundaryRectangle,
    size,
    fills,
    strokes,
    strokeWeight,
    strokeAlign,
    styles,
  }) : super(
          name: name,
          visible: visible,
          type: type,
          pluginData: pluginData,
          sharedPluginData: sharedPluginData,
          style: style,
          layoutAlign: layoutAlign,
          constraints: constraints,
          boundaryRectangle: boundaryRectangle,
          size: size,
          strokes: strokes,
          strokeWeight: strokeWeight,
          strokeAlign: strokeAlign,
          styles: styles,
        );

  @override
  FigmaNode createFigmaNode(Map<String, dynamic> json) =>
      FigmaLine.fromJson(json);
  factory FigmaLine.fromJson(Map<String, dynamic> json) =>
      _$FigmaLineFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FigmaLineToJson(this);

  @override
  Future<PBIntermediateNode> interpretNode(PBContext currentContext) {
    // TODO: implement interpretNode
    throw UnimplementedError();
  }
}
