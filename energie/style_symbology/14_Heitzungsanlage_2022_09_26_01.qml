<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" maxScale="0" simplifyDrawingTol="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyLocal="1" simplifyAlgorithm="0" minScale="100000000" simplifyDrawingHints="1" version="3.22.10-Białowieża" readOnly="0" hasScaleBasedVisibilityFlag="0" symbologyReferenceScale="-1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal endField="" fixedDuration="0" startExpression="" enabled="0" startField="" limitMode="0" durationField="" accumulate="0" mode="0" durationUnit="min" endExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" referencescale="-1" type="RuleRenderer" symbollevels="0" enableorderby="0">
    <rules key="{d48057ed-9933-40ec-bc98-61c90ff273ad}">
      <rule key="{1ddd9b0c-36bc-4ed2-ab93-51e7aa026b5b}" label="Heizung offensichtlich saniert 'Brennwert'" symbol="0" filter="  &quot;hz_tech&quot; =  'Brennwert'  "/>
      <rule key="{d93042c1-0235-498c-b58f-b4fd5f6d1c67}" label="Heizung unsaniert" symbol="1" filter="ELSE"/>
    </rules>
    <symbols>
      <symbol type="fill" clip_to_extent="1" name="0" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SimpleFill" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="0,182,228,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="35,35,35,255"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,182,228,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" name="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SimpleFill" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="200,200,200,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="35,35,35,255"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="200,200,200,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontFamily="Arial" fontSizeUnit="MapUnit" capitalization="0" fontKerning="1" fontUnderline="0" fontSize="4" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" namedStyle="Standard" fontWeight="50" multilineHeight="1" legendString="Aa" isExpression="0" blendMode="0" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" textOrientation="horizontal" allowHtml="0" fontItalic="0" fontLetterSpacing="0" textOpacity="1" textColor="50,50,50,255" useSubstitutions="0" fieldName="ha_nr">
        <families/>
        <text-buffer bufferOpacity="1" bufferNoFill="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSize="1" bufferColor="250,250,250,255" bufferDraw="0" bufferJoinStyle="128" bufferSizeUnits="MM"/>
        <text-mask maskEnabled="0" maskOpacity="1" maskType="0" maskedSymbolLayers="" maskSize="0" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128"/>
        <background shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="Point" shapeRadiiY="0" shapeType="0" shapeRadiiUnit="Point" shapeRotationType="0" shapeRotation="0" shapeRadiiX="0" shapeBorderWidthUnit="Point" shapeSizeX="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeDraw="0" shapeJoinStyle="64" shapeOpacity="1" shapeOffsetY="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
          <symbol type="marker" clip_to_extent="1" name="markerSymbol" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
              <Option type="Map">
                <Option type="QString" name="angle" value="0"/>
                <Option type="QString" name="cap_style" value="square"/>
                <Option type="QString" name="color" value="225,89,137,255"/>
                <Option type="QString" name="horizontal_anchor_point" value="1"/>
                <Option type="QString" name="joinstyle" value="bevel"/>
                <Option type="QString" name="name" value="circle"/>
                <Option type="QString" name="offset" value="0,0"/>
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offset_unit" value="MM"/>
                <Option type="QString" name="outline_color" value="35,35,35,255"/>
                <Option type="QString" name="outline_style" value="solid"/>
                <Option type="QString" name="outline_width" value="0"/>
                <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="outline_width_unit" value="MM"/>
                <Option type="QString" name="scale_method" value="diameter"/>
                <Option type="QString" name="size" value="2"/>
                <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="size_unit" value="MM"/>
                <Option type="QString" name="vertical_anchor_point" value="1"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="square" k="cap_style"/>
              <prop v="225,89,137,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="circle" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="2" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol type="fill" clip_to_extent="1" name="fillSymbol" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" class="SimpleFill" locked="0" pass="0">
              <Option type="Map">
                <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="color" value="255,255,255,255"/>
                <Option type="QString" name="joinstyle" value="bevel"/>
                <Option type="QString" name="offset" value="0,0"/>
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offset_unit" value="MM"/>
                <Option type="QString" name="outline_color" value="128,128,128,255"/>
                <Option type="QString" name="outline_style" value="no"/>
                <Option type="QString" name="outline_width" value="0"/>
                <Option type="QString" name="outline_width_unit" value="Point"/>
                <Option type="QString" name="style" value="solid"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="255,255,255,255" k="color"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="128,128,128,255" k="outline_color"/>
              <prop v="no" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="Point" k="outline_width_unit"/>
              <prop v="solid" k="style"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowDraw="0" shadowUnder="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetAngle="135" shadowScale="100" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format autoWrapLength="0" multilineAlign="3" rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" decimals="3" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" plussign="0" leftDirectionSymbol="&lt;" reverseDirectionSymbol="0" formatNumbers="0"/>
      <placement lineAnchorClipping="0" polygonPlacementFlags="2" distUnits="MM" offsetType="0" geometryGenerator="" rotationUnit="AngleDegrees" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" xOffset="0" offsetUnits="MM" lineAnchorType="0" dist="0" quadOffset="4" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" yOffset="0" rotationAngle="0" priority="5" placementFlags="10" geometryGeneratorEnabled="0" centroidInside="0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" centroidWhole="0" repeatDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" placement="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" preserveRotation="1" lineAnchorPercent="0.5" layerType="PolygonGeometry"/>
      <rendering mergeLines="0" fontMaxPixelSize="10000" drawLabels="1" fontMinPixelSize="3" fontLimitPixelSize="1" maxNumLabels="2000" zIndex="0" obstacleFactor="1" obstacleType="1" limitNumLabels="0" obstacle="1" displayAll="0" minFeatureSize="0" scaleMax="0" scaleVisibility="0" upsidedownLabels="0" unplacedVisibility="0" labelPerPart="0" scaleMin="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value=""/>
          <Option name="properties"/>
          <Option type="QString" name="type" value="collection"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
          <Option type="int" name="blendMode" value="0"/>
          <Option type="Map" name="ddProperties">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
          <Option type="bool" name="drawToAllParts" value="false"/>
          <Option type="QString" name="enabled" value="0"/>
          <Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
          <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
          <Option type="double" name="minLength" value="0"/>
          <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="minLengthUnit" value="MM"/>
          <Option type="double" name="offsetFromAnchor" value="0"/>
          <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="offsetFromAnchorUnit" value="MM"/>
          <Option type="double" name="offsetFromLabel" value="0"/>
          <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="offsetFromLabelUnit" value="MM"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option type="List" name="dualview/previewExpressions">
        <Option type="QString" value="&quot;ogc_fid&quot;"/>
      </Option>
      <Option type="int" name="embeddedWidgets/count" value="0"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeType="MM" spacingUnitScale="3x:0,0,0,0,0,0" backgroundAlpha="255" rotationOffset="270" backgroundColor="#ffffff" scaleBasedVisibility="0" width="15" opacity="1" height="15" labelPlacementMethod="XHeight" scaleDependency="Area" enabled="0" penAlpha="255" direction="0" spacing="5" penColor="#000000" penWidth="0" sizeScale="3x:0,0,0,0,0,0" lineSizeType="MM" minimumSize="0" barWidth="5" maxScaleDenominator="1e+08" spacingUnit="MM" minScaleDenominator="0" showAxis="1" lineSizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" colorOpacity="1" label="" color="#000000"/>
      <axisSymbol>
        <symbol type="line" clip_to_extent="1" name="" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" class="SimpleLine" locked="0" pass="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="5;2"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="35,35,35,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.26"/>
              <Option type="QString" name="line_width_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="trim_distance_end" value="0"/>
              <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="trim_distance_end_unit" value="MM"/>
              <Option type="QString" name="trim_distance_start" value="0"/>
              <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="trim_distance_start_unit" value="MM"/>
              <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
              <Option type="QString" name="use_custom_dash" value="0"/>
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="trim_distance_end"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
            <prop v="MM" k="trim_distance_end_unit"/>
            <prop v="0" k="trim_distance_start"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
            <prop v="MM" k="trim_distance_start_unit"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" dist="0" obstacle="0" placement="1" zIndex="0" priority="0" linePlacementFlags="18">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" name="allowedGapsBuffer" value="0"/>
        <Option type="bool" name="allowedGapsEnabled" value="false"/>
        <Option type="QString" name="allowedGapsLayer" value=""/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend showLabelLegend="0" type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="fid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ogc_fid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gml_id" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gebaeudefu" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ha_nr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ID" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Gemeinde" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Straßenna" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Nutzung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AnzLage" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Klasse" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="erdnut" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="engergy" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="leerstande" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Denkmal" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Erhalten" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Pruffall" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bilder2" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bilder3" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fertig" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Kommentar" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bilder1" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bilder4" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="objectid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Art" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Nutz" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_NutzTx" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Form" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Lage" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_BJ" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Denkma" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Topo" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Sock" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Knie" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geschosse" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Dachgescho" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WE_vorh" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WE_leer" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WE_nachSan" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GE_vorh" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GE_Leer" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GE_nachSan" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="EG_Nutz" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OG_Nutz" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GebZustSTB" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GebZustBT" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GebZustNRG" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_Form" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DaNeigung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_De" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_BJ" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_San" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_Dae" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_Dae_d" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_Dae_WLS" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_Dae_Ant" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_Vorh" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_Vorh_2" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_San" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_DaeMat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_Dae_d" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_WLS" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OGD_DaeAnt" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Oberfl" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_San" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_San_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_San_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Dae_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Dae_d" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Dae_WLS" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Dae_Ant" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_Glas" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe2_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe2_Glas" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe2_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe2_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe3_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe3_Glas" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe3_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe3_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe4_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe4_Glas" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe4_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe4_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_Ant" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe2_Ant" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe3_ant" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe4_Ant" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HET_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HET_Blatt" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HET_Fuell" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HET_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HET_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_San" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_BJ" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_Dae_Mat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_Dae_d" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_Dae_WLS" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_Dae_Ant" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ET_Wish" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_Versorg" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_Bauart" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_Tech" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_NRG" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_Ort" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_Tx" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WW_Versorg" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WW_NRG" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WW_Tech" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WW_Ort" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WW_Tx" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PV_Vorh" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PV_Mod_Art" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PV_Tx" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PV_Mod_Anz" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PV_Ort" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ST_Vorh" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ST_Mod_Art" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ST_Tx" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ST_Mod_Anz" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ST_Ort" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PV_kWp" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="layer" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="path" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bild 01" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bild 02" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bild 03" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Bild 04" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="erledigt" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DaDae" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Breit" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Lang" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Area_alle" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Area" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Traufe" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Giebel" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AWS_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Geshoss_H_li" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Geb_Traufe_H" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_DN_Bog" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_DN_Tan" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_DN_Cos" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_DN_Sin" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Da_H_Ges" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DG1_WFL_Verlust" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DG2_WFL_Verlust" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BGF" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NUF" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BRI" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Ve" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="An" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_Dae_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Traufe_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Giebel_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_GS_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_Ges_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DaDae_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_A" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="A_Ges" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_U_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KD_U_Part" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_U_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AW_U_Part" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_U_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Fe_U_Part" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DaDae_U_BAK" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DaDae_U_Part" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="U_Wert_Ges" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Gt15_20" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_NRG_Best" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_NRG_Best_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="G_Gl_N" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QW_Best" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_Best" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_Best_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qve" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qint" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qsol" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_Best" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_Best_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_Con_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_Con" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_Con_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_Best" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_Best_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_NRG_San" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HZ_NRG_San_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="G_Gl_N_San" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qsol_San" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qve_San" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_GEG" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_GEG_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_San_GEG" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_GEG" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_GEG_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_GEG_Con_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_GEG_Con" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_GEG_Con_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_GEG" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_GEG_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_EH_100" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_100_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_San_100" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_100" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_100_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_100_Con_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_100_Con" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_100_Con_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_100" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_100_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_EH_85" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_85_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_San_85" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_85" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_85_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_85_Con_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_85_Con" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_85_Con_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_85" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_85_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_EH_70" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_70_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_San_70" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_70" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_70_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_70_Con_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_70_Con" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_70_Con_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_70" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_70_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_EH_55" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_55_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_San_55" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_55" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_55_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_55_Con_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_55_Con" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_55_Con_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_55" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_55_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_EH_40" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_40_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="QH_San_40" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_40" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_40_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_40_Con_f" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_40_Con" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Qe_San_40_Con_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_40" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CO2_EH_40_Spez" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="fid" index="0" name=""/>
    <alias field="ogc_fid" index="1" name=""/>
    <alias field="gml_id" index="2" name=""/>
    <alias field="gebaeudefu" index="3" name=""/>
    <alias field="ha_nr" index="4" name=""/>
    <alias field="ID" index="5" name=""/>
    <alias field="Gemeinde" index="6" name=""/>
    <alias field="Straßenna" index="7" name=""/>
    <alias field="Nutzung" index="8" name=""/>
    <alias field="AnzLage" index="9" name=""/>
    <alias field="Klasse" index="10" name=""/>
    <alias field="erdnut" index="11" name=""/>
    <alias field="engergy" index="12" name=""/>
    <alias field="leerstande" index="13" name=""/>
    <alias field="Denkmal" index="14" name=""/>
    <alias field="Erhalten" index="15" name=""/>
    <alias field="Pruffall" index="16" name=""/>
    <alias field="Bilder2" index="17" name=""/>
    <alias field="Bilder3" index="18" name=""/>
    <alias field="Fertig" index="19" name=""/>
    <alias field="Kommentar" index="20" name=""/>
    <alias field="Bilder1" index="21" name=""/>
    <alias field="Bilder4" index="22" name=""/>
    <alias field="objectid" index="23" name=""/>
    <alias field="Geb_Art" index="24" name=""/>
    <alias field="Geb_Nutz" index="25" name=""/>
    <alias field="Geb_NutzTx" index="26" name=""/>
    <alias field="Geb_Form" index="27" name=""/>
    <alias field="Geb_Lage" index="28" name=""/>
    <alias field="Geb_BJ" index="29" name=""/>
    <alias field="Geb_BAK" index="30" name=""/>
    <alias field="Geb_Denkma" index="31" name=""/>
    <alias field="Geb_Topo" index="32" name=""/>
    <alias field="Geb_Sock" index="33" name=""/>
    <alias field="Geb_Knie" index="34" name=""/>
    <alias field="Geschosse" index="35" name=""/>
    <alias field="Dachgescho" index="36" name=""/>
    <alias field="WE_vorh" index="37" name=""/>
    <alias field="WE_leer" index="38" name=""/>
    <alias field="WE_nachSan" index="39" name=""/>
    <alias field="GE_vorh" index="40" name=""/>
    <alias field="GE_Leer" index="41" name=""/>
    <alias field="GE_nachSan" index="42" name=""/>
    <alias field="EG_Nutz" index="43" name=""/>
    <alias field="OG_Nutz" index="44" name=""/>
    <alias field="GebZustSTB" index="45" name=""/>
    <alias field="GebZustBT" index="46" name=""/>
    <alias field="GebZustNRG" index="47" name=""/>
    <alias field="Da_Form" index="48" name=""/>
    <alias field="DaNeigung" index="49" name=""/>
    <alias field="Da_De" index="50" name=""/>
    <alias field="Da_BJ" index="51" name=""/>
    <alias field="Da_BAK" index="52" name=""/>
    <alias field="Da_San" index="53" name=""/>
    <alias field="Da_Dae" index="54" name=""/>
    <alias field="Da_Dae_d" index="55" name=""/>
    <alias field="Da_Dae_WLS" index="56" name=""/>
    <alias field="Da_Dae_Ant" index="57" name=""/>
    <alias field="OGD_Vorh" index="58" name=""/>
    <alias field="OGD_Vorh_2" index="59" name=""/>
    <alias field="OGD_San" index="60" name=""/>
    <alias field="OGD_BJ" index="61" name=""/>
    <alias field="OGD_DaeMat" index="62" name=""/>
    <alias field="OGD_Dae_d" index="63" name=""/>
    <alias field="OGD_WLS" index="64" name=""/>
    <alias field="OGD_DaeAnt" index="65" name=""/>
    <alias field="AW_Mat" index="66" name=""/>
    <alias field="AW_Oberfl" index="67" name=""/>
    <alias field="AW_San" index="68" name=""/>
    <alias field="AW_San_BJ" index="69" name=""/>
    <alias field="AW_San_BAK" index="70" name=""/>
    <alias field="AW_Dae_Mat" index="71" name=""/>
    <alias field="AW_Dae_d" index="72" name=""/>
    <alias field="AW_Dae_WLS" index="73" name=""/>
    <alias field="AW_Dae_Ant" index="74" name=""/>
    <alias field="Fe_Mat" index="75" name=""/>
    <alias field="Fe_Glas" index="76" name=""/>
    <alias field="Fe_BJ" index="77" name=""/>
    <alias field="Fe_BAK" index="78" name=""/>
    <alias field="Fe2_Mat" index="79" name=""/>
    <alias field="Fe2_Glas" index="80" name=""/>
    <alias field="Fe2_BJ" index="81" name=""/>
    <alias field="Fe2_BAK" index="82" name=""/>
    <alias field="Fe3_Mat" index="83" name=""/>
    <alias field="Fe3_Glas" index="84" name=""/>
    <alias field="Fe3_BJ" index="85" name=""/>
    <alias field="Fe3_BAK" index="86" name=""/>
    <alias field="Fe4_Mat" index="87" name=""/>
    <alias field="Fe4_Glas" index="88" name=""/>
    <alias field="Fe4_BJ" index="89" name=""/>
    <alias field="Fe4_BAK" index="90" name=""/>
    <alias field="Fe_Ant" index="91" name=""/>
    <alias field="Fe2_Ant" index="92" name=""/>
    <alias field="Fe3_ant" index="93" name=""/>
    <alias field="Fe4_Ant" index="94" name=""/>
    <alias field="HET_Mat" index="95" name=""/>
    <alias field="HET_Blatt" index="96" name=""/>
    <alias field="HET_Fuell" index="97" name=""/>
    <alias field="HET_BJ" index="98" name=""/>
    <alias field="HET_BAK" index="99" name=""/>
    <alias field="KD_San" index="100" name=""/>
    <alias field="KD_BJ" index="101" name=""/>
    <alias field="KD_BAK" index="102" name=""/>
    <alias field="KD_Dae_Mat" index="103" name=""/>
    <alias field="KD_Dae_d" index="104" name=""/>
    <alias field="KD_Dae_WLS" index="105" name=""/>
    <alias field="KD_Dae_Ant" index="106" name=""/>
    <alias field="ET_Wish" index="107" name=""/>
    <alias field="HZ_Versorg" index="108" name=""/>
    <alias field="HZ_Bauart" index="109" name=""/>
    <alias field="HZ_Tech" index="110" name=""/>
    <alias field="HZ_NRG" index="111" name=""/>
    <alias field="HZ_Ort" index="112" name=""/>
    <alias field="HZ_Tx" index="113" name=""/>
    <alias field="WW_Versorg" index="114" name=""/>
    <alias field="WW_NRG" index="115" name=""/>
    <alias field="WW_Tech" index="116" name=""/>
    <alias field="WW_Ort" index="117" name=""/>
    <alias field="WW_Tx" index="118" name=""/>
    <alias field="PV_Vorh" index="119" name=""/>
    <alias field="PV_Mod_Art" index="120" name=""/>
    <alias field="PV_Tx" index="121" name=""/>
    <alias field="PV_Mod_Anz" index="122" name=""/>
    <alias field="PV_Ort" index="123" name=""/>
    <alias field="ST_Vorh" index="124" name=""/>
    <alias field="ST_Mod_Art" index="125" name=""/>
    <alias field="ST_Tx" index="126" name=""/>
    <alias field="ST_Mod_Anz" index="127" name=""/>
    <alias field="ST_Ort" index="128" name=""/>
    <alias field="PV_kWp" index="129" name=""/>
    <alias field="layer" index="130" name=""/>
    <alias field="path" index="131" name=""/>
    <alias field="Bild 01" index="132" name=""/>
    <alias field="Bild 02" index="133" name=""/>
    <alias field="Bild 03" index="134" name=""/>
    <alias field="Bild 04" index="135" name=""/>
    <alias field="erledigt" index="136" name=""/>
    <alias field="DaDae" index="137" name=""/>
    <alias field="Geb_Breit" index="138" name=""/>
    <alias field="Geb_Lang" index="139" name=""/>
    <alias field="Area_alle" index="140" name=""/>
    <alias field="Area" index="141" name=""/>
    <alias field="Geb_Traufe" index="142" name=""/>
    <alias field="Geb_Giebel" index="143" name=""/>
    <alias field="AWS_A" index="144" name=""/>
    <alias field="Geb_Geshoss_H_li" index="145" name=""/>
    <alias field="Geb_Traufe_H" index="146" name=""/>
    <alias field="Da_DN_Bog" index="147" name=""/>
    <alias field="Da_DN_Tan" index="148" name=""/>
    <alias field="Da_DN_Cos" index="149" name=""/>
    <alias field="Da_DN_Sin" index="150" name=""/>
    <alias field="Da_H_Ges" index="151" name=""/>
    <alias field="DG1_WFL_Verlust" index="152" name=""/>
    <alias field="DG2_WFL_Verlust" index="153" name=""/>
    <alias field="BGF" index="154" name=""/>
    <alias field="NUF" index="155" name=""/>
    <alias field="BRI" index="156" name=""/>
    <alias field="Ve" index="157" name=""/>
    <alias field="An" index="158" name=""/>
    <alias field="KD_Dae_A" index="159" name=""/>
    <alias field="AW_Traufe_A" index="160" name=""/>
    <alias field="AW_Giebel_A" index="161" name=""/>
    <alias field="AW_GS_A" index="162" name=""/>
    <alias field="AW_Ges_A" index="163" name=""/>
    <alias field="DaDae_A" index="164" name=""/>
    <alias field="Fe_A" index="165" name=""/>
    <alias field="A_Ges" index="166" name=""/>
    <alias field="KD_U_BAK" index="167" name=""/>
    <alias field="KD_U_Part" index="168" name=""/>
    <alias field="AW_U_BAK" index="169" name=""/>
    <alias field="AW_U_Part" index="170" name=""/>
    <alias field="Fe_U_BAK" index="171" name=""/>
    <alias field="Fe_U_Part" index="172" name=""/>
    <alias field="DaDae_U_BAK" index="173" name=""/>
    <alias field="DaDae_U_Part" index="174" name=""/>
    <alias field="U_Wert_Ges" index="175" name=""/>
    <alias field="Gt15_20" index="176" name=""/>
    <alias field="HZ_NRG_Best" index="177" name=""/>
    <alias field="HZ_NRG_Best_f" index="178" name=""/>
    <alias field="G_Gl_N" index="179" name=""/>
    <alias field="QW_Best" index="180" name=""/>
    <alias field="QH_Best" index="181" name=""/>
    <alias field="QH_Best_Spez" index="182" name=""/>
    <alias field="Qve" index="183" name=""/>
    <alias field="Qint" index="184" name=""/>
    <alias field="Qsol" index="185" name=""/>
    <alias field="Qe_Best" index="186" name=""/>
    <alias field="Qe_Best_Spez" index="187" name=""/>
    <alias field="Qe_Con_f" index="188" name=""/>
    <alias field="Qe_Con" index="189" name=""/>
    <alias field="Qe_Con_Spez" index="190" name=""/>
    <alias field="CO2_Best" index="191" name=""/>
    <alias field="CO2_Best_Spez" index="192" name=""/>
    <alias field="HZ_NRG_San" index="193" name=""/>
    <alias field="HZ_NRG_San_f" index="194" name=""/>
    <alias field="G_Gl_N_San" index="195" name=""/>
    <alias field="Qsol_San" index="196" name=""/>
    <alias field="Qve_San" index="197" name=""/>
    <alias field="QH_GEG" index="198" name=""/>
    <alias field="QH_GEG_Spez" index="199" name=""/>
    <alias field="QH_San_GEG" index="200" name=""/>
    <alias field="Qe_San_GEG" index="201" name=""/>
    <alias field="Qe_San_GEG_Spez" index="202" name=""/>
    <alias field="Qe_San_GEG_Con_f" index="203" name=""/>
    <alias field="Qe_San_GEG_Con" index="204" name=""/>
    <alias field="Qe_San_GEG_Con_Spez" index="205" name=""/>
    <alias field="CO2_GEG" index="206" name=""/>
    <alias field="CO2_GEG_Spez" index="207" name=""/>
    <alias field="QH_EH_100" index="208" name=""/>
    <alias field="QH_100_Spez" index="209" name=""/>
    <alias field="QH_San_100" index="210" name=""/>
    <alias field="Qe_San_100" index="211" name=""/>
    <alias field="Qe_San_100_Spez" index="212" name=""/>
    <alias field="Qe_San_100_Con_f" index="213" name=""/>
    <alias field="Qe_San_100_Con" index="214" name=""/>
    <alias field="Qe_San_100_Con_Spez" index="215" name=""/>
    <alias field="CO2_EH_100" index="216" name=""/>
    <alias field="CO2_EH_100_Spez" index="217" name=""/>
    <alias field="QH_EH_85" index="218" name=""/>
    <alias field="QH_85_Spez" index="219" name=""/>
    <alias field="QH_San_85" index="220" name=""/>
    <alias field="Qe_San_85" index="221" name=""/>
    <alias field="Qe_San_85_Spez" index="222" name=""/>
    <alias field="Qe_San_85_Con_f" index="223" name=""/>
    <alias field="Qe_San_85_Con" index="224" name=""/>
    <alias field="Qe_San_85_Con_Spez" index="225" name=""/>
    <alias field="CO2_EH_85" index="226" name=""/>
    <alias field="CO2_EH_85_Spez" index="227" name=""/>
    <alias field="QH_EH_70" index="228" name=""/>
    <alias field="QH_70_Spez" index="229" name=""/>
    <alias field="QH_San_70" index="230" name=""/>
    <alias field="Qe_San_70" index="231" name=""/>
    <alias field="Qe_San_70_Spez" index="232" name=""/>
    <alias field="Qe_San_70_Con_f" index="233" name=""/>
    <alias field="Qe_San_70_Con" index="234" name=""/>
    <alias field="Qe_San_70_Con_Spez" index="235" name=""/>
    <alias field="CO2_EH_70" index="236" name=""/>
    <alias field="CO2_EH_70_Spez" index="237" name=""/>
    <alias field="QH_EH_55" index="238" name=""/>
    <alias field="QH_55_Spez" index="239" name=""/>
    <alias field="QH_San_55" index="240" name=""/>
    <alias field="Qe_San_55" index="241" name=""/>
    <alias field="Qe_San_55_Spez" index="242" name=""/>
    <alias field="Qe_San_55_Con_f" index="243" name=""/>
    <alias field="Qe_San_55_Con" index="244" name=""/>
    <alias field="Qe_San_55_Con_Spez" index="245" name=""/>
    <alias field="CO2_EH_55" index="246" name=""/>
    <alias field="CO2_EH_55_Spez" index="247" name=""/>
    <alias field="QH_EH_40" index="248" name=""/>
    <alias field="QH_40_Spez" index="249" name=""/>
    <alias field="QH_San_40" index="250" name=""/>
    <alias field="Qe_San_40" index="251" name=""/>
    <alias field="Qe_San_40_Spez" index="252" name=""/>
    <alias field="Qe_San_40_Con_f" index="253" name=""/>
    <alias field="Qe_San_40_Con" index="254" name=""/>
    <alias field="Qe_San_40_Con_Spez" index="255" name=""/>
    <alias field="CO2_EH_40" index="256" name=""/>
    <alias field="CO2_EH_40_Spez" index="257" name=""/>
  </aliases>
  <defaults>
    <default field="fid" applyOnUpdate="0" expression=""/>
    <default field="ogc_fid" applyOnUpdate="0" expression=""/>
    <default field="gml_id" applyOnUpdate="0" expression=""/>
    <default field="gebaeudefu" applyOnUpdate="0" expression=""/>
    <default field="ha_nr" applyOnUpdate="0" expression=""/>
    <default field="ID" applyOnUpdate="0" expression=""/>
    <default field="Gemeinde" applyOnUpdate="0" expression=""/>
    <default field="Straßenna" applyOnUpdate="0" expression=""/>
    <default field="Nutzung" applyOnUpdate="0" expression=""/>
    <default field="AnzLage" applyOnUpdate="0" expression=""/>
    <default field="Klasse" applyOnUpdate="0" expression=""/>
    <default field="erdnut" applyOnUpdate="0" expression=""/>
    <default field="engergy" applyOnUpdate="0" expression=""/>
    <default field="leerstande" applyOnUpdate="0" expression=""/>
    <default field="Denkmal" applyOnUpdate="0" expression=""/>
    <default field="Erhalten" applyOnUpdate="0" expression=""/>
    <default field="Pruffall" applyOnUpdate="0" expression=""/>
    <default field="Bilder2" applyOnUpdate="0" expression=""/>
    <default field="Bilder3" applyOnUpdate="0" expression=""/>
    <default field="Fertig" applyOnUpdate="0" expression=""/>
    <default field="Kommentar" applyOnUpdate="0" expression=""/>
    <default field="Bilder1" applyOnUpdate="0" expression=""/>
    <default field="Bilder4" applyOnUpdate="0" expression=""/>
    <default field="objectid" applyOnUpdate="0" expression=""/>
    <default field="Geb_Art" applyOnUpdate="0" expression=""/>
    <default field="Geb_Nutz" applyOnUpdate="0" expression=""/>
    <default field="Geb_NutzTx" applyOnUpdate="0" expression=""/>
    <default field="Geb_Form" applyOnUpdate="0" expression=""/>
    <default field="Geb_Lage" applyOnUpdate="0" expression=""/>
    <default field="Geb_BJ" applyOnUpdate="0" expression=""/>
    <default field="Geb_BAK" applyOnUpdate="0" expression=""/>
    <default field="Geb_Denkma" applyOnUpdate="0" expression=""/>
    <default field="Geb_Topo" applyOnUpdate="0" expression=""/>
    <default field="Geb_Sock" applyOnUpdate="0" expression=""/>
    <default field="Geb_Knie" applyOnUpdate="0" expression=""/>
    <default field="Geschosse" applyOnUpdate="0" expression=""/>
    <default field="Dachgescho" applyOnUpdate="0" expression=""/>
    <default field="WE_vorh" applyOnUpdate="0" expression=""/>
    <default field="WE_leer" applyOnUpdate="0" expression=""/>
    <default field="WE_nachSan" applyOnUpdate="0" expression=""/>
    <default field="GE_vorh" applyOnUpdate="0" expression=""/>
    <default field="GE_Leer" applyOnUpdate="0" expression=""/>
    <default field="GE_nachSan" applyOnUpdate="0" expression=""/>
    <default field="EG_Nutz" applyOnUpdate="0" expression=""/>
    <default field="OG_Nutz" applyOnUpdate="0" expression=""/>
    <default field="GebZustSTB" applyOnUpdate="0" expression=""/>
    <default field="GebZustBT" applyOnUpdate="0" expression=""/>
    <default field="GebZustNRG" applyOnUpdate="0" expression=""/>
    <default field="Da_Form" applyOnUpdate="0" expression=""/>
    <default field="DaNeigung" applyOnUpdate="0" expression=""/>
    <default field="Da_De" applyOnUpdate="0" expression=""/>
    <default field="Da_BJ" applyOnUpdate="0" expression=""/>
    <default field="Da_BAK" applyOnUpdate="0" expression=""/>
    <default field="Da_San" applyOnUpdate="0" expression=""/>
    <default field="Da_Dae" applyOnUpdate="0" expression=""/>
    <default field="Da_Dae_d" applyOnUpdate="0" expression=""/>
    <default field="Da_Dae_WLS" applyOnUpdate="0" expression=""/>
    <default field="Da_Dae_Ant" applyOnUpdate="0" expression=""/>
    <default field="OGD_Vorh" applyOnUpdate="0" expression=""/>
    <default field="OGD_Vorh_2" applyOnUpdate="0" expression=""/>
    <default field="OGD_San" applyOnUpdate="0" expression=""/>
    <default field="OGD_BJ" applyOnUpdate="0" expression=""/>
    <default field="OGD_DaeMat" applyOnUpdate="0" expression=""/>
    <default field="OGD_Dae_d" applyOnUpdate="0" expression=""/>
    <default field="OGD_WLS" applyOnUpdate="0" expression=""/>
    <default field="OGD_DaeAnt" applyOnUpdate="0" expression=""/>
    <default field="AW_Mat" applyOnUpdate="0" expression=""/>
    <default field="AW_Oberfl" applyOnUpdate="0" expression=""/>
    <default field="AW_San" applyOnUpdate="0" expression=""/>
    <default field="AW_San_BJ" applyOnUpdate="0" expression=""/>
    <default field="AW_San_BAK" applyOnUpdate="0" expression=""/>
    <default field="AW_Dae_Mat" applyOnUpdate="0" expression=""/>
    <default field="AW_Dae_d" applyOnUpdate="0" expression=""/>
    <default field="AW_Dae_WLS" applyOnUpdate="0" expression=""/>
    <default field="AW_Dae_Ant" applyOnUpdate="0" expression=""/>
    <default field="Fe_Mat" applyOnUpdate="0" expression=""/>
    <default field="Fe_Glas" applyOnUpdate="0" expression=""/>
    <default field="Fe_BJ" applyOnUpdate="0" expression=""/>
    <default field="Fe_BAK" applyOnUpdate="0" expression=""/>
    <default field="Fe2_Mat" applyOnUpdate="0" expression=""/>
    <default field="Fe2_Glas" applyOnUpdate="0" expression=""/>
    <default field="Fe2_BJ" applyOnUpdate="0" expression=""/>
    <default field="Fe2_BAK" applyOnUpdate="0" expression=""/>
    <default field="Fe3_Mat" applyOnUpdate="0" expression=""/>
    <default field="Fe3_Glas" applyOnUpdate="0" expression=""/>
    <default field="Fe3_BJ" applyOnUpdate="0" expression=""/>
    <default field="Fe3_BAK" applyOnUpdate="0" expression=""/>
    <default field="Fe4_Mat" applyOnUpdate="0" expression=""/>
    <default field="Fe4_Glas" applyOnUpdate="0" expression=""/>
    <default field="Fe4_BJ" applyOnUpdate="0" expression=""/>
    <default field="Fe4_BAK" applyOnUpdate="0" expression=""/>
    <default field="Fe_Ant" applyOnUpdate="0" expression=""/>
    <default field="Fe2_Ant" applyOnUpdate="0" expression=""/>
    <default field="Fe3_ant" applyOnUpdate="0" expression=""/>
    <default field="Fe4_Ant" applyOnUpdate="0" expression=""/>
    <default field="HET_Mat" applyOnUpdate="0" expression=""/>
    <default field="HET_Blatt" applyOnUpdate="0" expression=""/>
    <default field="HET_Fuell" applyOnUpdate="0" expression=""/>
    <default field="HET_BJ" applyOnUpdate="0" expression=""/>
    <default field="HET_BAK" applyOnUpdate="0" expression=""/>
    <default field="KD_San" applyOnUpdate="0" expression=""/>
    <default field="KD_BJ" applyOnUpdate="0" expression=""/>
    <default field="KD_BAK" applyOnUpdate="0" expression=""/>
    <default field="KD_Dae_Mat" applyOnUpdate="0" expression=""/>
    <default field="KD_Dae_d" applyOnUpdate="0" expression=""/>
    <default field="KD_Dae_WLS" applyOnUpdate="0" expression=""/>
    <default field="KD_Dae_Ant" applyOnUpdate="0" expression=""/>
    <default field="ET_Wish" applyOnUpdate="0" expression=""/>
    <default field="HZ_Versorg" applyOnUpdate="0" expression=""/>
    <default field="HZ_Bauart" applyOnUpdate="0" expression=""/>
    <default field="HZ_Tech" applyOnUpdate="0" expression=""/>
    <default field="HZ_NRG" applyOnUpdate="0" expression=""/>
    <default field="HZ_Ort" applyOnUpdate="0" expression=""/>
    <default field="HZ_Tx" applyOnUpdate="0" expression=""/>
    <default field="WW_Versorg" applyOnUpdate="0" expression=""/>
    <default field="WW_NRG" applyOnUpdate="0" expression=""/>
    <default field="WW_Tech" applyOnUpdate="0" expression=""/>
    <default field="WW_Ort" applyOnUpdate="0" expression=""/>
    <default field="WW_Tx" applyOnUpdate="0" expression=""/>
    <default field="PV_Vorh" applyOnUpdate="0" expression=""/>
    <default field="PV_Mod_Art" applyOnUpdate="0" expression=""/>
    <default field="PV_Tx" applyOnUpdate="0" expression=""/>
    <default field="PV_Mod_Anz" applyOnUpdate="0" expression=""/>
    <default field="PV_Ort" applyOnUpdate="0" expression=""/>
    <default field="ST_Vorh" applyOnUpdate="0" expression=""/>
    <default field="ST_Mod_Art" applyOnUpdate="0" expression=""/>
    <default field="ST_Tx" applyOnUpdate="0" expression=""/>
    <default field="ST_Mod_Anz" applyOnUpdate="0" expression=""/>
    <default field="ST_Ort" applyOnUpdate="0" expression=""/>
    <default field="PV_kWp" applyOnUpdate="0" expression=""/>
    <default field="layer" applyOnUpdate="0" expression=""/>
    <default field="path" applyOnUpdate="0" expression=""/>
    <default field="Bild 01" applyOnUpdate="0" expression=""/>
    <default field="Bild 02" applyOnUpdate="0" expression=""/>
    <default field="Bild 03" applyOnUpdate="0" expression=""/>
    <default field="Bild 04" applyOnUpdate="0" expression=""/>
    <default field="erledigt" applyOnUpdate="0" expression=""/>
    <default field="DaDae" applyOnUpdate="0" expression=""/>
    <default field="Geb_Breit" applyOnUpdate="0" expression=""/>
    <default field="Geb_Lang" applyOnUpdate="0" expression=""/>
    <default field="Area_alle" applyOnUpdate="0" expression=""/>
    <default field="Area" applyOnUpdate="0" expression=""/>
    <default field="Geb_Traufe" applyOnUpdate="0" expression=""/>
    <default field="Geb_Giebel" applyOnUpdate="0" expression=""/>
    <default field="AWS_A" applyOnUpdate="0" expression=""/>
    <default field="Geb_Geshoss_H_li" applyOnUpdate="0" expression=""/>
    <default field="Geb_Traufe_H" applyOnUpdate="0" expression=""/>
    <default field="Da_DN_Bog" applyOnUpdate="0" expression=""/>
    <default field="Da_DN_Tan" applyOnUpdate="0" expression=""/>
    <default field="Da_DN_Cos" applyOnUpdate="0" expression=""/>
    <default field="Da_DN_Sin" applyOnUpdate="0" expression=""/>
    <default field="Da_H_Ges" applyOnUpdate="0" expression=""/>
    <default field="DG1_WFL_Verlust" applyOnUpdate="0" expression=""/>
    <default field="DG2_WFL_Verlust" applyOnUpdate="0" expression=""/>
    <default field="BGF" applyOnUpdate="0" expression=""/>
    <default field="NUF" applyOnUpdate="0" expression=""/>
    <default field="BRI" applyOnUpdate="0" expression=""/>
    <default field="Ve" applyOnUpdate="0" expression=""/>
    <default field="An" applyOnUpdate="0" expression=""/>
    <default field="KD_Dae_A" applyOnUpdate="0" expression=""/>
    <default field="AW_Traufe_A" applyOnUpdate="0" expression=""/>
    <default field="AW_Giebel_A" applyOnUpdate="0" expression=""/>
    <default field="AW_GS_A" applyOnUpdate="0" expression=""/>
    <default field="AW_Ges_A" applyOnUpdate="0" expression=""/>
    <default field="DaDae_A" applyOnUpdate="0" expression=""/>
    <default field="Fe_A" applyOnUpdate="0" expression=""/>
    <default field="A_Ges" applyOnUpdate="0" expression=""/>
    <default field="KD_U_BAK" applyOnUpdate="0" expression=""/>
    <default field="KD_U_Part" applyOnUpdate="0" expression=""/>
    <default field="AW_U_BAK" applyOnUpdate="0" expression=""/>
    <default field="AW_U_Part" applyOnUpdate="0" expression=""/>
    <default field="Fe_U_BAK" applyOnUpdate="0" expression=""/>
    <default field="Fe_U_Part" applyOnUpdate="0" expression=""/>
    <default field="DaDae_U_BAK" applyOnUpdate="0" expression=""/>
    <default field="DaDae_U_Part" applyOnUpdate="0" expression=""/>
    <default field="U_Wert_Ges" applyOnUpdate="0" expression=""/>
    <default field="Gt15_20" applyOnUpdate="0" expression=""/>
    <default field="HZ_NRG_Best" applyOnUpdate="0" expression=""/>
    <default field="HZ_NRG_Best_f" applyOnUpdate="0" expression=""/>
    <default field="G_Gl_N" applyOnUpdate="0" expression=""/>
    <default field="QW_Best" applyOnUpdate="0" expression=""/>
    <default field="QH_Best" applyOnUpdate="0" expression=""/>
    <default field="QH_Best_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qve" applyOnUpdate="0" expression=""/>
    <default field="Qint" applyOnUpdate="0" expression=""/>
    <default field="Qsol" applyOnUpdate="0" expression=""/>
    <default field="Qe_Best" applyOnUpdate="0" expression=""/>
    <default field="Qe_Best_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qe_Con_f" applyOnUpdate="0" expression=""/>
    <default field="Qe_Con" applyOnUpdate="0" expression=""/>
    <default field="Qe_Con_Spez" applyOnUpdate="0" expression=""/>
    <default field="CO2_Best" applyOnUpdate="0" expression=""/>
    <default field="CO2_Best_Spez" applyOnUpdate="0" expression=""/>
    <default field="HZ_NRG_San" applyOnUpdate="0" expression=""/>
    <default field="HZ_NRG_San_f" applyOnUpdate="0" expression=""/>
    <default field="G_Gl_N_San" applyOnUpdate="0" expression=""/>
    <default field="Qsol_San" applyOnUpdate="0" expression=""/>
    <default field="Qve_San" applyOnUpdate="0" expression=""/>
    <default field="QH_GEG" applyOnUpdate="0" expression=""/>
    <default field="QH_GEG_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_San_GEG" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_GEG" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_GEG_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_GEG_Con_f" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_GEG_Con" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_GEG_Con_Spez" applyOnUpdate="0" expression=""/>
    <default field="CO2_GEG" applyOnUpdate="0" expression=""/>
    <default field="CO2_GEG_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_EH_100" applyOnUpdate="0" expression=""/>
    <default field="QH_100_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_San_100" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_100" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_100_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_100_Con_f" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_100_Con" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_100_Con_Spez" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_100" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_100_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_EH_85" applyOnUpdate="0" expression=""/>
    <default field="QH_85_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_San_85" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_85" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_85_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_85_Con_f" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_85_Con" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_85_Con_Spez" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_85" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_85_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_EH_70" applyOnUpdate="0" expression=""/>
    <default field="QH_70_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_San_70" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_70" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_70_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_70_Con_f" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_70_Con" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_70_Con_Spez" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_70" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_70_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_EH_55" applyOnUpdate="0" expression=""/>
    <default field="QH_55_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_San_55" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_55" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_55_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_55_Con_f" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_55_Con" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_55_Con_Spez" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_55" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_55_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_EH_40" applyOnUpdate="0" expression=""/>
    <default field="QH_40_Spez" applyOnUpdate="0" expression=""/>
    <default field="QH_San_40" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_40" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_40_Spez" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_40_Con_f" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_40_Con" applyOnUpdate="0" expression=""/>
    <default field="Qe_San_40_Con_Spez" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_40" applyOnUpdate="0" expression=""/>
    <default field="CO2_EH_40_Spez" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="fid" constraints="3" exp_strength="0" unique_strength="1" notnull_strength="1"/>
    <constraint field="ogc_fid" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="gml_id" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="gebaeudefu" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ha_nr" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ID" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Gemeinde" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Straßenna" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Nutzung" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AnzLage" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Klasse" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="erdnut" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="engergy" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="leerstande" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Denkmal" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Erhalten" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Pruffall" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bilder2" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bilder3" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fertig" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Kommentar" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bilder1" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bilder4" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="objectid" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Art" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Nutz" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_NutzTx" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Form" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Lage" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Denkma" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Topo" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Sock" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Knie" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geschosse" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Dachgescho" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WE_vorh" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WE_leer" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WE_nachSan" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="GE_vorh" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="GE_Leer" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="GE_nachSan" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="EG_Nutz" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OG_Nutz" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="GebZustSTB" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="GebZustBT" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="GebZustNRG" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_Form" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="DaNeigung" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_De" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_Dae" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_Dae_d" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_Dae_WLS" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_Dae_Ant" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_Vorh" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_Vorh_2" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_DaeMat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_Dae_d" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_WLS" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="OGD_DaeAnt" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Oberfl" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_San_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_San_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Dae_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Dae_d" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Dae_WLS" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Dae_Ant" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_Glas" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe2_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe2_Glas" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe2_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe2_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe3_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe3_Glas" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe3_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe3_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe4_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe4_Glas" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe4_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe4_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_Ant" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe2_Ant" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe3_ant" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe4_Ant" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HET_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HET_Blatt" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HET_Fuell" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HET_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HET_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_BJ" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_Dae_Mat" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_Dae_d" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_Dae_WLS" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_Dae_Ant" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ET_Wish" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_Versorg" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_Bauart" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_Tech" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_NRG" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_Ort" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_Tx" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WW_Versorg" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WW_NRG" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WW_Tech" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WW_Ort" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="WW_Tx" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="PV_Vorh" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="PV_Mod_Art" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="PV_Tx" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="PV_Mod_Anz" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="PV_Ort" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ST_Vorh" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ST_Mod_Art" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ST_Tx" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ST_Mod_Anz" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="ST_Ort" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="PV_kWp" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="layer" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="path" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bild 01" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bild 02" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bild 03" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Bild 04" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="erledigt" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="DaDae" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Breit" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Lang" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Area_alle" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Area" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Traufe" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Giebel" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AWS_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Geshoss_H_li" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Geb_Traufe_H" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_DN_Bog" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_DN_Tan" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_DN_Cos" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_DN_Sin" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Da_H_Ges" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="DG1_WFL_Verlust" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="DG2_WFL_Verlust" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="BGF" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="NUF" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="BRI" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Ve" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="An" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_Dae_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Traufe_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Giebel_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_GS_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_Ges_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="DaDae_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_A" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="A_Ges" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_U_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="KD_U_Part" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_U_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="AW_U_Part" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_U_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Fe_U_Part" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="DaDae_U_BAK" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="DaDae_U_Part" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="U_Wert_Ges" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Gt15_20" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_NRG_Best" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_NRG_Best_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="G_Gl_N" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QW_Best" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_Best" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_Best_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qve" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qint" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qsol" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_Best" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_Best_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_Con_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_Con" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_Con_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_Best" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_Best_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_NRG_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="HZ_NRG_San_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="G_Gl_N_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qsol_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qve_San" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_GEG" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_GEG_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_San_GEG" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_GEG" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_GEG_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_GEG_Con_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_GEG_Con" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_GEG_Con_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_GEG" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_GEG_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_EH_100" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_100_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_San_100" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_100" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_100_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_100_Con_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_100_Con" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_100_Con_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_100" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_100_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_EH_85" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_85_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_San_85" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_85" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_85_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_85_Con_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_85_Con" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_85_Con_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_85" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_85_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_EH_70" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_70_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_San_70" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_70" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_70_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_70_Con_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_70_Con" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_70_Con_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_70" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_70_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_EH_55" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_55_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_San_55" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_55" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_55_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_55_Con_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_55_Con" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_55_Con_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_55" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_55_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_EH_40" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_40_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="QH_San_40" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_40" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_40_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_40_Con_f" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_40_Con" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="Qe_San_40_Con_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_40" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="CO2_EH_40_Spez" constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="fid" desc="" exp=""/>
    <constraint field="ogc_fid" desc="" exp=""/>
    <constraint field="gml_id" desc="" exp=""/>
    <constraint field="gebaeudefu" desc="" exp=""/>
    <constraint field="ha_nr" desc="" exp=""/>
    <constraint field="ID" desc="" exp=""/>
    <constraint field="Gemeinde" desc="" exp=""/>
    <constraint field="Straßenna" desc="" exp=""/>
    <constraint field="Nutzung" desc="" exp=""/>
    <constraint field="AnzLage" desc="" exp=""/>
    <constraint field="Klasse" desc="" exp=""/>
    <constraint field="erdnut" desc="" exp=""/>
    <constraint field="engergy" desc="" exp=""/>
    <constraint field="leerstande" desc="" exp=""/>
    <constraint field="Denkmal" desc="" exp=""/>
    <constraint field="Erhalten" desc="" exp=""/>
    <constraint field="Pruffall" desc="" exp=""/>
    <constraint field="Bilder2" desc="" exp=""/>
    <constraint field="Bilder3" desc="" exp=""/>
    <constraint field="Fertig" desc="" exp=""/>
    <constraint field="Kommentar" desc="" exp=""/>
    <constraint field="Bilder1" desc="" exp=""/>
    <constraint field="Bilder4" desc="" exp=""/>
    <constraint field="objectid" desc="" exp=""/>
    <constraint field="Geb_Art" desc="" exp=""/>
    <constraint field="Geb_Nutz" desc="" exp=""/>
    <constraint field="Geb_NutzTx" desc="" exp=""/>
    <constraint field="Geb_Form" desc="" exp=""/>
    <constraint field="Geb_Lage" desc="" exp=""/>
    <constraint field="Geb_BJ" desc="" exp=""/>
    <constraint field="Geb_BAK" desc="" exp=""/>
    <constraint field="Geb_Denkma" desc="" exp=""/>
    <constraint field="Geb_Topo" desc="" exp=""/>
    <constraint field="Geb_Sock" desc="" exp=""/>
    <constraint field="Geb_Knie" desc="" exp=""/>
    <constraint field="Geschosse" desc="" exp=""/>
    <constraint field="Dachgescho" desc="" exp=""/>
    <constraint field="WE_vorh" desc="" exp=""/>
    <constraint field="WE_leer" desc="" exp=""/>
    <constraint field="WE_nachSan" desc="" exp=""/>
    <constraint field="GE_vorh" desc="" exp=""/>
    <constraint field="GE_Leer" desc="" exp=""/>
    <constraint field="GE_nachSan" desc="" exp=""/>
    <constraint field="EG_Nutz" desc="" exp=""/>
    <constraint field="OG_Nutz" desc="" exp=""/>
    <constraint field="GebZustSTB" desc="" exp=""/>
    <constraint field="GebZustBT" desc="" exp=""/>
    <constraint field="GebZustNRG" desc="" exp=""/>
    <constraint field="Da_Form" desc="" exp=""/>
    <constraint field="DaNeigung" desc="" exp=""/>
    <constraint field="Da_De" desc="" exp=""/>
    <constraint field="Da_BJ" desc="" exp=""/>
    <constraint field="Da_BAK" desc="" exp=""/>
    <constraint field="Da_San" desc="" exp=""/>
    <constraint field="Da_Dae" desc="" exp=""/>
    <constraint field="Da_Dae_d" desc="" exp=""/>
    <constraint field="Da_Dae_WLS" desc="" exp=""/>
    <constraint field="Da_Dae_Ant" desc="" exp=""/>
    <constraint field="OGD_Vorh" desc="" exp=""/>
    <constraint field="OGD_Vorh_2" desc="" exp=""/>
    <constraint field="OGD_San" desc="" exp=""/>
    <constraint field="OGD_BJ" desc="" exp=""/>
    <constraint field="OGD_DaeMat" desc="" exp=""/>
    <constraint field="OGD_Dae_d" desc="" exp=""/>
    <constraint field="OGD_WLS" desc="" exp=""/>
    <constraint field="OGD_DaeAnt" desc="" exp=""/>
    <constraint field="AW_Mat" desc="" exp=""/>
    <constraint field="AW_Oberfl" desc="" exp=""/>
    <constraint field="AW_San" desc="" exp=""/>
    <constraint field="AW_San_BJ" desc="" exp=""/>
    <constraint field="AW_San_BAK" desc="" exp=""/>
    <constraint field="AW_Dae_Mat" desc="" exp=""/>
    <constraint field="AW_Dae_d" desc="" exp=""/>
    <constraint field="AW_Dae_WLS" desc="" exp=""/>
    <constraint field="AW_Dae_Ant" desc="" exp=""/>
    <constraint field="Fe_Mat" desc="" exp=""/>
    <constraint field="Fe_Glas" desc="" exp=""/>
    <constraint field="Fe_BJ" desc="" exp=""/>
    <constraint field="Fe_BAK" desc="" exp=""/>
    <constraint field="Fe2_Mat" desc="" exp=""/>
    <constraint field="Fe2_Glas" desc="" exp=""/>
    <constraint field="Fe2_BJ" desc="" exp=""/>
    <constraint field="Fe2_BAK" desc="" exp=""/>
    <constraint field="Fe3_Mat" desc="" exp=""/>
    <constraint field="Fe3_Glas" desc="" exp=""/>
    <constraint field="Fe3_BJ" desc="" exp=""/>
    <constraint field="Fe3_BAK" desc="" exp=""/>
    <constraint field="Fe4_Mat" desc="" exp=""/>
    <constraint field="Fe4_Glas" desc="" exp=""/>
    <constraint field="Fe4_BJ" desc="" exp=""/>
    <constraint field="Fe4_BAK" desc="" exp=""/>
    <constraint field="Fe_Ant" desc="" exp=""/>
    <constraint field="Fe2_Ant" desc="" exp=""/>
    <constraint field="Fe3_ant" desc="" exp=""/>
    <constraint field="Fe4_Ant" desc="" exp=""/>
    <constraint field="HET_Mat" desc="" exp=""/>
    <constraint field="HET_Blatt" desc="" exp=""/>
    <constraint field="HET_Fuell" desc="" exp=""/>
    <constraint field="HET_BJ" desc="" exp=""/>
    <constraint field="HET_BAK" desc="" exp=""/>
    <constraint field="KD_San" desc="" exp=""/>
    <constraint field="KD_BJ" desc="" exp=""/>
    <constraint field="KD_BAK" desc="" exp=""/>
    <constraint field="KD_Dae_Mat" desc="" exp=""/>
    <constraint field="KD_Dae_d" desc="" exp=""/>
    <constraint field="KD_Dae_WLS" desc="" exp=""/>
    <constraint field="KD_Dae_Ant" desc="" exp=""/>
    <constraint field="ET_Wish" desc="" exp=""/>
    <constraint field="HZ_Versorg" desc="" exp=""/>
    <constraint field="HZ_Bauart" desc="" exp=""/>
    <constraint field="HZ_Tech" desc="" exp=""/>
    <constraint field="HZ_NRG" desc="" exp=""/>
    <constraint field="HZ_Ort" desc="" exp=""/>
    <constraint field="HZ_Tx" desc="" exp=""/>
    <constraint field="WW_Versorg" desc="" exp=""/>
    <constraint field="WW_NRG" desc="" exp=""/>
    <constraint field="WW_Tech" desc="" exp=""/>
    <constraint field="WW_Ort" desc="" exp=""/>
    <constraint field="WW_Tx" desc="" exp=""/>
    <constraint field="PV_Vorh" desc="" exp=""/>
    <constraint field="PV_Mod_Art" desc="" exp=""/>
    <constraint field="PV_Tx" desc="" exp=""/>
    <constraint field="PV_Mod_Anz" desc="" exp=""/>
    <constraint field="PV_Ort" desc="" exp=""/>
    <constraint field="ST_Vorh" desc="" exp=""/>
    <constraint field="ST_Mod_Art" desc="" exp=""/>
    <constraint field="ST_Tx" desc="" exp=""/>
    <constraint field="ST_Mod_Anz" desc="" exp=""/>
    <constraint field="ST_Ort" desc="" exp=""/>
    <constraint field="PV_kWp" desc="" exp=""/>
    <constraint field="layer" desc="" exp=""/>
    <constraint field="path" desc="" exp=""/>
    <constraint field="Bild 01" desc="" exp=""/>
    <constraint field="Bild 02" desc="" exp=""/>
    <constraint field="Bild 03" desc="" exp=""/>
    <constraint field="Bild 04" desc="" exp=""/>
    <constraint field="erledigt" desc="" exp=""/>
    <constraint field="DaDae" desc="" exp=""/>
    <constraint field="Geb_Breit" desc="" exp=""/>
    <constraint field="Geb_Lang" desc="" exp=""/>
    <constraint field="Area_alle" desc="" exp=""/>
    <constraint field="Area" desc="" exp=""/>
    <constraint field="Geb_Traufe" desc="" exp=""/>
    <constraint field="Geb_Giebel" desc="" exp=""/>
    <constraint field="AWS_A" desc="" exp=""/>
    <constraint field="Geb_Geshoss_H_li" desc="" exp=""/>
    <constraint field="Geb_Traufe_H" desc="" exp=""/>
    <constraint field="Da_DN_Bog" desc="" exp=""/>
    <constraint field="Da_DN_Tan" desc="" exp=""/>
    <constraint field="Da_DN_Cos" desc="" exp=""/>
    <constraint field="Da_DN_Sin" desc="" exp=""/>
    <constraint field="Da_H_Ges" desc="" exp=""/>
    <constraint field="DG1_WFL_Verlust" desc="" exp=""/>
    <constraint field="DG2_WFL_Verlust" desc="" exp=""/>
    <constraint field="BGF" desc="" exp=""/>
    <constraint field="NUF" desc="" exp=""/>
    <constraint field="BRI" desc="" exp=""/>
    <constraint field="Ve" desc="" exp=""/>
    <constraint field="An" desc="" exp=""/>
    <constraint field="KD_Dae_A" desc="" exp=""/>
    <constraint field="AW_Traufe_A" desc="" exp=""/>
    <constraint field="AW_Giebel_A" desc="" exp=""/>
    <constraint field="AW_GS_A" desc="" exp=""/>
    <constraint field="AW_Ges_A" desc="" exp=""/>
    <constraint field="DaDae_A" desc="" exp=""/>
    <constraint field="Fe_A" desc="" exp=""/>
    <constraint field="A_Ges" desc="" exp=""/>
    <constraint field="KD_U_BAK" desc="" exp=""/>
    <constraint field="KD_U_Part" desc="" exp=""/>
    <constraint field="AW_U_BAK" desc="" exp=""/>
    <constraint field="AW_U_Part" desc="" exp=""/>
    <constraint field="Fe_U_BAK" desc="" exp=""/>
    <constraint field="Fe_U_Part" desc="" exp=""/>
    <constraint field="DaDae_U_BAK" desc="" exp=""/>
    <constraint field="DaDae_U_Part" desc="" exp=""/>
    <constraint field="U_Wert_Ges" desc="" exp=""/>
    <constraint field="Gt15_20" desc="" exp=""/>
    <constraint field="HZ_NRG_Best" desc="" exp=""/>
    <constraint field="HZ_NRG_Best_f" desc="" exp=""/>
    <constraint field="G_Gl_N" desc="" exp=""/>
    <constraint field="QW_Best" desc="" exp=""/>
    <constraint field="QH_Best" desc="" exp=""/>
    <constraint field="QH_Best_Spez" desc="" exp=""/>
    <constraint field="Qve" desc="" exp=""/>
    <constraint field="Qint" desc="" exp=""/>
    <constraint field="Qsol" desc="" exp=""/>
    <constraint field="Qe_Best" desc="" exp=""/>
    <constraint field="Qe_Best_Spez" desc="" exp=""/>
    <constraint field="Qe_Con_f" desc="" exp=""/>
    <constraint field="Qe_Con" desc="" exp=""/>
    <constraint field="Qe_Con_Spez" desc="" exp=""/>
    <constraint field="CO2_Best" desc="" exp=""/>
    <constraint field="CO2_Best_Spez" desc="" exp=""/>
    <constraint field="HZ_NRG_San" desc="" exp=""/>
    <constraint field="HZ_NRG_San_f" desc="" exp=""/>
    <constraint field="G_Gl_N_San" desc="" exp=""/>
    <constraint field="Qsol_San" desc="" exp=""/>
    <constraint field="Qve_San" desc="" exp=""/>
    <constraint field="QH_GEG" desc="" exp=""/>
    <constraint field="QH_GEG_Spez" desc="" exp=""/>
    <constraint field="QH_San_GEG" desc="" exp=""/>
    <constraint field="Qe_San_GEG" desc="" exp=""/>
    <constraint field="Qe_San_GEG_Spez" desc="" exp=""/>
    <constraint field="Qe_San_GEG_Con_f" desc="" exp=""/>
    <constraint field="Qe_San_GEG_Con" desc="" exp=""/>
    <constraint field="Qe_San_GEG_Con_Spez" desc="" exp=""/>
    <constraint field="CO2_GEG" desc="" exp=""/>
    <constraint field="CO2_GEG_Spez" desc="" exp=""/>
    <constraint field="QH_EH_100" desc="" exp=""/>
    <constraint field="QH_100_Spez" desc="" exp=""/>
    <constraint field="QH_San_100" desc="" exp=""/>
    <constraint field="Qe_San_100" desc="" exp=""/>
    <constraint field="Qe_San_100_Spez" desc="" exp=""/>
    <constraint field="Qe_San_100_Con_f" desc="" exp=""/>
    <constraint field="Qe_San_100_Con" desc="" exp=""/>
    <constraint field="Qe_San_100_Con_Spez" desc="" exp=""/>
    <constraint field="CO2_EH_100" desc="" exp=""/>
    <constraint field="CO2_EH_100_Spez" desc="" exp=""/>
    <constraint field="QH_EH_85" desc="" exp=""/>
    <constraint field="QH_85_Spez" desc="" exp=""/>
    <constraint field="QH_San_85" desc="" exp=""/>
    <constraint field="Qe_San_85" desc="" exp=""/>
    <constraint field="Qe_San_85_Spez" desc="" exp=""/>
    <constraint field="Qe_San_85_Con_f" desc="" exp=""/>
    <constraint field="Qe_San_85_Con" desc="" exp=""/>
    <constraint field="Qe_San_85_Con_Spez" desc="" exp=""/>
    <constraint field="CO2_EH_85" desc="" exp=""/>
    <constraint field="CO2_EH_85_Spez" desc="" exp=""/>
    <constraint field="QH_EH_70" desc="" exp=""/>
    <constraint field="QH_70_Spez" desc="" exp=""/>
    <constraint field="QH_San_70" desc="" exp=""/>
    <constraint field="Qe_San_70" desc="" exp=""/>
    <constraint field="Qe_San_70_Spez" desc="" exp=""/>
    <constraint field="Qe_San_70_Con_f" desc="" exp=""/>
    <constraint field="Qe_San_70_Con" desc="" exp=""/>
    <constraint field="Qe_San_70_Con_Spez" desc="" exp=""/>
    <constraint field="CO2_EH_70" desc="" exp=""/>
    <constraint field="CO2_EH_70_Spez" desc="" exp=""/>
    <constraint field="QH_EH_55" desc="" exp=""/>
    <constraint field="QH_55_Spez" desc="" exp=""/>
    <constraint field="QH_San_55" desc="" exp=""/>
    <constraint field="Qe_San_55" desc="" exp=""/>
    <constraint field="Qe_San_55_Spez" desc="" exp=""/>
    <constraint field="Qe_San_55_Con_f" desc="" exp=""/>
    <constraint field="Qe_San_55_Con" desc="" exp=""/>
    <constraint field="Qe_San_55_Con_Spez" desc="" exp=""/>
    <constraint field="CO2_EH_55" desc="" exp=""/>
    <constraint field="CO2_EH_55_Spez" desc="" exp=""/>
    <constraint field="QH_EH_40" desc="" exp=""/>
    <constraint field="QH_40_Spez" desc="" exp=""/>
    <constraint field="QH_San_40" desc="" exp=""/>
    <constraint field="Qe_San_40" desc="" exp=""/>
    <constraint field="Qe_San_40_Spez" desc="" exp=""/>
    <constraint field="Qe_San_40_Con_f" desc="" exp=""/>
    <constraint field="Qe_San_40_Con" desc="" exp=""/>
    <constraint field="Qe_San_40_Con_Spez" desc="" exp=""/>
    <constraint field="CO2_EH_40" desc="" exp=""/>
    <constraint field="CO2_EH_40_Spez" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="">
    <columns>
      <column type="field" hidden="0" name="fid" width="-1"/>
      <column type="field" hidden="0" name="ogc_fid" width="-1"/>
      <column type="field" hidden="0" name="gml_id" width="-1"/>
      <column type="field" hidden="0" name="gebaeudefu" width="-1"/>
      <column type="field" hidden="0" name="ha_nr" width="-1"/>
      <column type="field" hidden="0" name="ID" width="-1"/>
      <column type="field" hidden="0" name="Gemeinde" width="-1"/>
      <column type="field" hidden="0" name="Straßenna" width="-1"/>
      <column type="field" hidden="0" name="Nutzung" width="-1"/>
      <column type="field" hidden="0" name="AnzLage" width="-1"/>
      <column type="field" hidden="0" name="Klasse" width="-1"/>
      <column type="field" hidden="0" name="erdnut" width="-1"/>
      <column type="field" hidden="0" name="engergy" width="-1"/>
      <column type="field" hidden="0" name="leerstande" width="-1"/>
      <column type="field" hidden="0" name="Denkmal" width="-1"/>
      <column type="field" hidden="0" name="Erhalten" width="-1"/>
      <column type="field" hidden="0" name="Pruffall" width="-1"/>
      <column type="field" hidden="0" name="Bilder2" width="-1"/>
      <column type="field" hidden="0" name="Bilder3" width="-1"/>
      <column type="field" hidden="0" name="Fertig" width="-1"/>
      <column type="field" hidden="0" name="Kommentar" width="-1"/>
      <column type="field" hidden="0" name="Bilder1" width="-1"/>
      <column type="field" hidden="0" name="Bilder4" width="-1"/>
      <column type="field" hidden="0" name="objectid" width="-1"/>
      <column type="field" hidden="0" name="Geb_Art" width="-1"/>
      <column type="field" hidden="0" name="Geb_Nutz" width="-1"/>
      <column type="field" hidden="0" name="Geb_NutzTx" width="-1"/>
      <column type="field" hidden="0" name="Geb_Form" width="-1"/>
      <column type="field" hidden="0" name="Geb_Lage" width="-1"/>
      <column type="field" hidden="0" name="Geb_BJ" width="-1"/>
      <column type="field" hidden="0" name="Geb_BAK" width="-1"/>
      <column type="field" hidden="0" name="Geb_Denkma" width="-1"/>
      <column type="field" hidden="0" name="Geb_Topo" width="-1"/>
      <column type="field" hidden="0" name="Geb_Sock" width="-1"/>
      <column type="field" hidden="0" name="Geb_Knie" width="-1"/>
      <column type="field" hidden="0" name="Geschosse" width="-1"/>
      <column type="field" hidden="0" name="Dachgescho" width="-1"/>
      <column type="field" hidden="0" name="WE_vorh" width="-1"/>
      <column type="field" hidden="0" name="WE_leer" width="-1"/>
      <column type="field" hidden="0" name="WE_nachSan" width="-1"/>
      <column type="field" hidden="0" name="GE_vorh" width="-1"/>
      <column type="field" hidden="0" name="GE_Leer" width="-1"/>
      <column type="field" hidden="0" name="GE_nachSan" width="-1"/>
      <column type="field" hidden="0" name="EG_Nutz" width="-1"/>
      <column type="field" hidden="0" name="OG_Nutz" width="-1"/>
      <column type="field" hidden="0" name="GebZustSTB" width="-1"/>
      <column type="field" hidden="0" name="GebZustBT" width="-1"/>
      <column type="field" hidden="0" name="GebZustNRG" width="-1"/>
      <column type="field" hidden="0" name="Da_Form" width="-1"/>
      <column type="field" hidden="0" name="DaNeigung" width="-1"/>
      <column type="field" hidden="0" name="Da_De" width="-1"/>
      <column type="field" hidden="0" name="Da_BJ" width="-1"/>
      <column type="field" hidden="0" name="Da_BAK" width="-1"/>
      <column type="field" hidden="0" name="Da_San" width="-1"/>
      <column type="field" hidden="0" name="Da_Dae" width="-1"/>
      <column type="field" hidden="0" name="Da_Dae_d" width="-1"/>
      <column type="field" hidden="0" name="Da_Dae_WLS" width="-1"/>
      <column type="field" hidden="0" name="Da_Dae_Ant" width="-1"/>
      <column type="field" hidden="0" name="OGD_Vorh" width="-1"/>
      <column type="field" hidden="0" name="OGD_Vorh_2" width="-1"/>
      <column type="field" hidden="0" name="OGD_San" width="-1"/>
      <column type="field" hidden="0" name="OGD_BJ" width="-1"/>
      <column type="field" hidden="0" name="OGD_DaeMat" width="-1"/>
      <column type="field" hidden="0" name="OGD_Dae_d" width="-1"/>
      <column type="field" hidden="0" name="OGD_WLS" width="-1"/>
      <column type="field" hidden="0" name="OGD_DaeAnt" width="-1"/>
      <column type="field" hidden="0" name="AW_Mat" width="-1"/>
      <column type="field" hidden="0" name="AW_Oberfl" width="-1"/>
      <column type="field" hidden="0" name="AW_San" width="-1"/>
      <column type="field" hidden="0" name="AW_San_BJ" width="-1"/>
      <column type="field" hidden="0" name="AW_San_BAK" width="-1"/>
      <column type="field" hidden="0" name="AW_Dae_Mat" width="-1"/>
      <column type="field" hidden="0" name="AW_Dae_d" width="-1"/>
      <column type="field" hidden="0" name="AW_Dae_WLS" width="-1"/>
      <column type="field" hidden="0" name="AW_Dae_Ant" width="-1"/>
      <column type="field" hidden="0" name="Fe_Mat" width="-1"/>
      <column type="field" hidden="0" name="Fe_Glas" width="-1"/>
      <column type="field" hidden="0" name="Fe_BJ" width="-1"/>
      <column type="field" hidden="0" name="Fe_BAK" width="-1"/>
      <column type="field" hidden="0" name="Fe2_Mat" width="-1"/>
      <column type="field" hidden="0" name="Fe2_Glas" width="-1"/>
      <column type="field" hidden="0" name="Fe2_BJ" width="-1"/>
      <column type="field" hidden="0" name="Fe2_BAK" width="-1"/>
      <column type="field" hidden="0" name="Fe3_Mat" width="-1"/>
      <column type="field" hidden="0" name="Fe3_Glas" width="-1"/>
      <column type="field" hidden="0" name="Fe3_BJ" width="-1"/>
      <column type="field" hidden="0" name="Fe3_BAK" width="-1"/>
      <column type="field" hidden="0" name="Fe4_Mat" width="-1"/>
      <column type="field" hidden="0" name="Fe4_Glas" width="-1"/>
      <column type="field" hidden="0" name="Fe4_BJ" width="-1"/>
      <column type="field" hidden="0" name="Fe4_BAK" width="-1"/>
      <column type="field" hidden="0" name="Fe_Ant" width="-1"/>
      <column type="field" hidden="0" name="Fe2_Ant" width="-1"/>
      <column type="field" hidden="0" name="Fe3_ant" width="-1"/>
      <column type="field" hidden="0" name="Fe4_Ant" width="-1"/>
      <column type="field" hidden="0" name="HET_Mat" width="-1"/>
      <column type="field" hidden="0" name="HET_Blatt" width="-1"/>
      <column type="field" hidden="0" name="HET_Fuell" width="-1"/>
      <column type="field" hidden="0" name="HET_BJ" width="-1"/>
      <column type="field" hidden="0" name="HET_BAK" width="-1"/>
      <column type="field" hidden="0" name="KD_San" width="-1"/>
      <column type="field" hidden="0" name="KD_BJ" width="-1"/>
      <column type="field" hidden="0" name="KD_BAK" width="-1"/>
      <column type="field" hidden="0" name="KD_Dae_Mat" width="-1"/>
      <column type="field" hidden="0" name="KD_Dae_d" width="-1"/>
      <column type="field" hidden="0" name="KD_Dae_WLS" width="-1"/>
      <column type="field" hidden="0" name="KD_Dae_Ant" width="-1"/>
      <column type="field" hidden="0" name="ET_Wish" width="-1"/>
      <column type="field" hidden="0" name="HZ_Versorg" width="-1"/>
      <column type="field" hidden="0" name="HZ_Bauart" width="-1"/>
      <column type="field" hidden="0" name="HZ_Tech" width="-1"/>
      <column type="field" hidden="0" name="HZ_NRG" width="-1"/>
      <column type="field" hidden="0" name="HZ_Ort" width="-1"/>
      <column type="field" hidden="0" name="HZ_Tx" width="-1"/>
      <column type="field" hidden="0" name="WW_Versorg" width="-1"/>
      <column type="field" hidden="0" name="WW_NRG" width="-1"/>
      <column type="field" hidden="0" name="WW_Tech" width="-1"/>
      <column type="field" hidden="0" name="WW_Ort" width="-1"/>
      <column type="field" hidden="0" name="WW_Tx" width="-1"/>
      <column type="field" hidden="0" name="PV_Vorh" width="-1"/>
      <column type="field" hidden="0" name="PV_Mod_Art" width="-1"/>
      <column type="field" hidden="0" name="PV_Tx" width="-1"/>
      <column type="field" hidden="0" name="PV_Mod_Anz" width="-1"/>
      <column type="field" hidden="0" name="PV_Ort" width="-1"/>
      <column type="field" hidden="0" name="ST_Vorh" width="-1"/>
      <column type="field" hidden="0" name="ST_Mod_Art" width="-1"/>
      <column type="field" hidden="0" name="ST_Tx" width="-1"/>
      <column type="field" hidden="0" name="ST_Mod_Anz" width="-1"/>
      <column type="field" hidden="0" name="ST_Ort" width="-1"/>
      <column type="field" hidden="0" name="PV_kWp" width="-1"/>
      <column type="field" hidden="0" name="layer" width="-1"/>
      <column type="field" hidden="0" name="path" width="-1"/>
      <column type="field" hidden="0" name="Bild 01" width="-1"/>
      <column type="field" hidden="0" name="Bild 02" width="-1"/>
      <column type="field" hidden="0" name="Bild 03" width="-1"/>
      <column type="field" hidden="0" name="Bild 04" width="-1"/>
      <column type="field" hidden="0" name="erledigt" width="-1"/>
      <column type="field" hidden="0" name="DaDae" width="-1"/>
      <column type="field" hidden="0" name="Geb_Breit" width="-1"/>
      <column type="field" hidden="0" name="Geb_Lang" width="-1"/>
      <column type="field" hidden="0" name="Area_alle" width="-1"/>
      <column type="field" hidden="0" name="Area" width="-1"/>
      <column type="field" hidden="0" name="Geb_Traufe" width="-1"/>
      <column type="field" hidden="0" name="Geb_Giebel" width="-1"/>
      <column type="field" hidden="0" name="AWS_A" width="-1"/>
      <column type="field" hidden="0" name="Geb_Geshoss_H_li" width="-1"/>
      <column type="field" hidden="0" name="Geb_Traufe_H" width="-1"/>
      <column type="field" hidden="0" name="Da_DN_Bog" width="-1"/>
      <column type="field" hidden="0" name="Da_DN_Tan" width="-1"/>
      <column type="field" hidden="0" name="Da_DN_Cos" width="-1"/>
      <column type="field" hidden="0" name="Da_DN_Sin" width="-1"/>
      <column type="field" hidden="0" name="Da_H_Ges" width="-1"/>
      <column type="field" hidden="0" name="DG1_WFL_Verlust" width="-1"/>
      <column type="field" hidden="0" name="DG2_WFL_Verlust" width="-1"/>
      <column type="field" hidden="0" name="BGF" width="-1"/>
      <column type="field" hidden="0" name="NUF" width="-1"/>
      <column type="field" hidden="0" name="BRI" width="-1"/>
      <column type="field" hidden="0" name="Ve" width="-1"/>
      <column type="field" hidden="0" name="An" width="-1"/>
      <column type="field" hidden="0" name="KD_Dae_A" width="-1"/>
      <column type="field" hidden="0" name="AW_Traufe_A" width="-1"/>
      <column type="field" hidden="0" name="AW_Giebel_A" width="-1"/>
      <column type="field" hidden="0" name="AW_GS_A" width="-1"/>
      <column type="field" hidden="0" name="AW_Ges_A" width="-1"/>
      <column type="field" hidden="0" name="DaDae_A" width="-1"/>
      <column type="field" hidden="0" name="Fe_A" width="-1"/>
      <column type="field" hidden="0" name="A_Ges" width="-1"/>
      <column type="field" hidden="0" name="KD_U_BAK" width="-1"/>
      <column type="field" hidden="0" name="KD_U_Part" width="-1"/>
      <column type="field" hidden="0" name="AW_U_BAK" width="-1"/>
      <column type="field" hidden="0" name="AW_U_Part" width="-1"/>
      <column type="field" hidden="0" name="Fe_U_BAK" width="-1"/>
      <column type="field" hidden="0" name="Fe_U_Part" width="-1"/>
      <column type="field" hidden="0" name="DaDae_U_BAK" width="-1"/>
      <column type="field" hidden="0" name="DaDae_U_Part" width="-1"/>
      <column type="field" hidden="0" name="U_Wert_Ges" width="-1"/>
      <column type="field" hidden="0" name="Gt15_20" width="-1"/>
      <column type="field" hidden="0" name="HZ_NRG_Best" width="-1"/>
      <column type="field" hidden="0" name="HZ_NRG_Best_f" width="-1"/>
      <column type="field" hidden="0" name="G_Gl_N" width="-1"/>
      <column type="field" hidden="0" name="QW_Best" width="-1"/>
      <column type="field" hidden="0" name="QH_Best" width="-1"/>
      <column type="field" hidden="0" name="QH_Best_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qve" width="-1"/>
      <column type="field" hidden="0" name="Qint" width="-1"/>
      <column type="field" hidden="0" name="Qsol" width="-1"/>
      <column type="field" hidden="0" name="Qe_Best" width="-1"/>
      <column type="field" hidden="0" name="Qe_Best_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qe_Con_f" width="-1"/>
      <column type="field" hidden="0" name="Qe_Con" width="-1"/>
      <column type="field" hidden="0" name="Qe_Con_Spez" width="-1"/>
      <column type="field" hidden="0" name="CO2_Best" width="-1"/>
      <column type="field" hidden="0" name="CO2_Best_Spez" width="-1"/>
      <column type="field" hidden="0" name="HZ_NRG_San" width="-1"/>
      <column type="field" hidden="0" name="HZ_NRG_San_f" width="-1"/>
      <column type="field" hidden="0" name="G_Gl_N_San" width="-1"/>
      <column type="field" hidden="0" name="Qsol_San" width="-1"/>
      <column type="field" hidden="0" name="Qve_San" width="-1"/>
      <column type="field" hidden="0" name="QH_GEG" width="-1"/>
      <column type="field" hidden="0" name="QH_GEG_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_San_GEG" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_GEG" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_GEG_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_GEG_Con_f" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_GEG_Con" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_GEG_Con_Spez" width="-1"/>
      <column type="field" hidden="0" name="CO2_GEG" width="-1"/>
      <column type="field" hidden="0" name="CO2_GEG_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_EH_100" width="-1"/>
      <column type="field" hidden="0" name="QH_100_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_San_100" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_100" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_100_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_100_Con_f" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_100_Con" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_100_Con_Spez" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_100" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_100_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_EH_85" width="-1"/>
      <column type="field" hidden="0" name="QH_85_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_San_85" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_85" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_85_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_85_Con_f" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_85_Con" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_85_Con_Spez" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_85" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_85_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_EH_70" width="-1"/>
      <column type="field" hidden="0" name="QH_70_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_San_70" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_70" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_70_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_70_Con_f" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_70_Con" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_70_Con_Spez" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_70" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_70_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_EH_55" width="-1"/>
      <column type="field" hidden="0" name="QH_55_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_San_55" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_55" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_55_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_55_Con_f" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_55_Con" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_55_Con_Spez" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_55" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_55_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_EH_40" width="-1"/>
      <column type="field" hidden="0" name="QH_40_Spez" width="-1"/>
      <column type="field" hidden="0" name="QH_San_40" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_40" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_40_Spez" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_40_Con_f" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_40_Con" width="-1"/>
      <column type="field" hidden="0" name="Qe_San_40_Con_Spez" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_40" width="-1"/>
      <column type="field" hidden="0" name="CO2_EH_40_Spez" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="AWS_A"/>
    <field editable="1" name="AW_Dae_Ant"/>
    <field editable="1" name="AW_Dae_Mat"/>
    <field editable="1" name="AW_Dae_WLS"/>
    <field editable="1" name="AW_Dae_d"/>
    <field editable="1" name="AW_GS_A"/>
    <field editable="1" name="AW_Ges_A"/>
    <field editable="1" name="AW_Giebel_A"/>
    <field editable="1" name="AW_Mat"/>
    <field editable="1" name="AW_Oberfl"/>
    <field editable="1" name="AW_San"/>
    <field editable="1" name="AW_San_BAK"/>
    <field editable="1" name="AW_San_BJ"/>
    <field editable="1" name="AW_Traufe_A"/>
    <field editable="1" name="AW_U_BAK"/>
    <field editable="1" name="AW_U_Part"/>
    <field editable="1" name="A_Ges"/>
    <field editable="1" name="An"/>
    <field editable="1" name="AnzLage"/>
    <field editable="1" name="Area"/>
    <field editable="1" name="Area_alle"/>
    <field editable="1" name="BGF"/>
    <field editable="1" name="BRI"/>
    <field editable="1" name="Bild 01"/>
    <field editable="1" name="Bild 02"/>
    <field editable="1" name="Bild 03"/>
    <field editable="1" name="Bild 04"/>
    <field editable="1" name="Bilder1"/>
    <field editable="1" name="Bilder2"/>
    <field editable="1" name="Bilder3"/>
    <field editable="1" name="Bilder4"/>
    <field editable="1" name="CO2_Best"/>
    <field editable="1" name="CO2_Best_Spez"/>
    <field editable="1" name="CO2_EH_100"/>
    <field editable="1" name="CO2_EH_100_Spez"/>
    <field editable="1" name="CO2_EH_40"/>
    <field editable="1" name="CO2_EH_40_Spez"/>
    <field editable="1" name="CO2_EH_55"/>
    <field editable="1" name="CO2_EH_55_Spez"/>
    <field editable="1" name="CO2_EH_70"/>
    <field editable="1" name="CO2_EH_70_Spez"/>
    <field editable="1" name="CO2_EH_85"/>
    <field editable="1" name="CO2_EH_85_Spez"/>
    <field editable="1" name="CO2_GEG"/>
    <field editable="1" name="CO2_GEG_Spez"/>
    <field editable="1" name="DG1_WFL_Verlust"/>
    <field editable="1" name="DG2_WFL_Verlust"/>
    <field editable="1" name="DaDae"/>
    <field editable="1" name="DaDae_A"/>
    <field editable="1" name="DaDae_U_BAK"/>
    <field editable="1" name="DaDae_U_Part"/>
    <field editable="1" name="DaNeigung"/>
    <field editable="1" name="Da_BAK"/>
    <field editable="1" name="Da_BJ"/>
    <field editable="1" name="Da_DN_Bog"/>
    <field editable="1" name="Da_DN_Cos"/>
    <field editable="1" name="Da_DN_Sin"/>
    <field editable="1" name="Da_DN_Tan"/>
    <field editable="1" name="Da_Dae"/>
    <field editable="1" name="Da_Dae_Ant"/>
    <field editable="1" name="Da_Dae_WLS"/>
    <field editable="1" name="Da_Dae_d"/>
    <field editable="1" name="Da_De"/>
    <field editable="1" name="Da_Form"/>
    <field editable="1" name="Da_H_Ges"/>
    <field editable="1" name="Da_San"/>
    <field editable="1" name="Dachgescho"/>
    <field editable="1" name="Denkmal"/>
    <field editable="1" name="EG_Nutz"/>
    <field editable="1" name="ET_Wish"/>
    <field editable="1" name="Erhalten"/>
    <field editable="1" name="Fe2_Ant"/>
    <field editable="1" name="Fe2_BAK"/>
    <field editable="1" name="Fe2_BJ"/>
    <field editable="1" name="Fe2_Glas"/>
    <field editable="1" name="Fe2_Mat"/>
    <field editable="1" name="Fe3_BAK"/>
    <field editable="1" name="Fe3_BJ"/>
    <field editable="1" name="Fe3_Glas"/>
    <field editable="1" name="Fe3_Mat"/>
    <field editable="1" name="Fe3_ant"/>
    <field editable="1" name="Fe4_Ant"/>
    <field editable="1" name="Fe4_BAK"/>
    <field editable="1" name="Fe4_BJ"/>
    <field editable="1" name="Fe4_Glas"/>
    <field editable="1" name="Fe4_Mat"/>
    <field editable="1" name="Fe_A"/>
    <field editable="1" name="Fe_Ant"/>
    <field editable="1" name="Fe_BAK"/>
    <field editable="1" name="Fe_BJ"/>
    <field editable="1" name="Fe_Glas"/>
    <field editable="1" name="Fe_Mat"/>
    <field editable="1" name="Fe_U_BAK"/>
    <field editable="1" name="Fe_U_Part"/>
    <field editable="1" name="Fertig"/>
    <field editable="1" name="GE_Leer"/>
    <field editable="1" name="GE_nachSan"/>
    <field editable="1" name="GE_vorh"/>
    <field editable="1" name="G_Gl_N"/>
    <field editable="1" name="G_Gl_N_San"/>
    <field editable="1" name="GebZustBT"/>
    <field editable="1" name="GebZustNRG"/>
    <field editable="1" name="GebZustSTB"/>
    <field editable="1" name="Geb_Art"/>
    <field editable="1" name="Geb_BAK"/>
    <field editable="1" name="Geb_BJ"/>
    <field editable="1" name="Geb_Breit"/>
    <field editable="1" name="Geb_Denkma"/>
    <field editable="1" name="Geb_Form"/>
    <field editable="1" name="Geb_Geshoss_H_li"/>
    <field editable="1" name="Geb_Giebel"/>
    <field editable="1" name="Geb_Knie"/>
    <field editable="1" name="Geb_Lage"/>
    <field editable="1" name="Geb_Lang"/>
    <field editable="1" name="Geb_Nutz"/>
    <field editable="1" name="Geb_NutzTx"/>
    <field editable="1" name="Geb_Sock"/>
    <field editable="1" name="Geb_Topo"/>
    <field editable="1" name="Geb_Traufe"/>
    <field editable="1" name="Geb_Traufe_H"/>
    <field editable="1" name="Gemeinde"/>
    <field editable="1" name="Geschosse"/>
    <field editable="1" name="Gt15_20"/>
    <field editable="1" name="HET_BAK"/>
    <field editable="1" name="HET_BJ"/>
    <field editable="1" name="HET_Blatt"/>
    <field editable="1" name="HET_Fuell"/>
    <field editable="1" name="HET_Mat"/>
    <field editable="1" name="HZ_Bauart"/>
    <field editable="1" name="HZ_NRG"/>
    <field editable="1" name="HZ_NRG_Best"/>
    <field editable="1" name="HZ_NRG_Best_f"/>
    <field editable="1" name="HZ_NRG_San"/>
    <field editable="1" name="HZ_NRG_San_f"/>
    <field editable="1" name="HZ_Ort"/>
    <field editable="1" name="HZ_Tech"/>
    <field editable="1" name="HZ_Tx"/>
    <field editable="1" name="HZ_Versorg"/>
    <field editable="1" name="ID"/>
    <field editable="1" name="KD_BAK"/>
    <field editable="1" name="KD_BJ"/>
    <field editable="1" name="KD_Dae_A"/>
    <field editable="1" name="KD_Dae_Ant"/>
    <field editable="1" name="KD_Dae_Mat"/>
    <field editable="1" name="KD_Dae_WLS"/>
    <field editable="1" name="KD_Dae_d"/>
    <field editable="1" name="KD_San"/>
    <field editable="1" name="KD_U_BAK"/>
    <field editable="1" name="KD_U_Part"/>
    <field editable="1" name="Klasse"/>
    <field editable="1" name="Kommentar"/>
    <field editable="1" name="NUF"/>
    <field editable="1" name="Nutzung"/>
    <field editable="1" name="OGD_BJ"/>
    <field editable="1" name="OGD_DaeAnt"/>
    <field editable="1" name="OGD_DaeMat"/>
    <field editable="1" name="OGD_Dae_d"/>
    <field editable="1" name="OGD_San"/>
    <field editable="1" name="OGD_Vorh"/>
    <field editable="1" name="OGD_Vorh_2"/>
    <field editable="1" name="OGD_WLS"/>
    <field editable="1" name="OG_Nutz"/>
    <field editable="1" name="PV_Mod_Anz"/>
    <field editable="1" name="PV_Mod_Art"/>
    <field editable="1" name="PV_Ort"/>
    <field editable="1" name="PV_Tx"/>
    <field editable="1" name="PV_Vorh"/>
    <field editable="1" name="PV_kWp"/>
    <field editable="1" name="Pruffall"/>
    <field editable="1" name="QH_100_Spez"/>
    <field editable="1" name="QH_40_Spez"/>
    <field editable="1" name="QH_55_Spez"/>
    <field editable="1" name="QH_70_Spez"/>
    <field editable="1" name="QH_85_Spez"/>
    <field editable="1" name="QH_Best"/>
    <field editable="1" name="QH_Best_Spez"/>
    <field editable="1" name="QH_EH_100"/>
    <field editable="1" name="QH_EH_40"/>
    <field editable="1" name="QH_EH_55"/>
    <field editable="1" name="QH_EH_70"/>
    <field editable="1" name="QH_EH_85"/>
    <field editable="1" name="QH_GEG"/>
    <field editable="1" name="QH_GEG_Spez"/>
    <field editable="1" name="QH_San_100"/>
    <field editable="1" name="QH_San_40"/>
    <field editable="1" name="QH_San_55"/>
    <field editable="1" name="QH_San_70"/>
    <field editable="1" name="QH_San_85"/>
    <field editable="1" name="QH_San_GEG"/>
    <field editable="1" name="QW_Best"/>
    <field editable="1" name="Qe_Best"/>
    <field editable="1" name="Qe_Best_Spez"/>
    <field editable="1" name="Qe_Con"/>
    <field editable="1" name="Qe_Con_Spez"/>
    <field editable="1" name="Qe_Con_f"/>
    <field editable="1" name="Qe_San_100"/>
    <field editable="1" name="Qe_San_100_Con"/>
    <field editable="1" name="Qe_San_100_Con_Spez"/>
    <field editable="1" name="Qe_San_100_Con_f"/>
    <field editable="1" name="Qe_San_100_Spez"/>
    <field editable="1" name="Qe_San_40"/>
    <field editable="1" name="Qe_San_40_Con"/>
    <field editable="1" name="Qe_San_40_Con_Spez"/>
    <field editable="1" name="Qe_San_40_Con_f"/>
    <field editable="1" name="Qe_San_40_Spez"/>
    <field editable="1" name="Qe_San_55"/>
    <field editable="1" name="Qe_San_55_Con"/>
    <field editable="1" name="Qe_San_55_Con_Spez"/>
    <field editable="1" name="Qe_San_55_Con_f"/>
    <field editable="1" name="Qe_San_55_Spez"/>
    <field editable="1" name="Qe_San_70"/>
    <field editable="1" name="Qe_San_70_Con"/>
    <field editable="1" name="Qe_San_70_Con_Spez"/>
    <field editable="1" name="Qe_San_70_Con_f"/>
    <field editable="1" name="Qe_San_70_Spez"/>
    <field editable="1" name="Qe_San_85"/>
    <field editable="1" name="Qe_San_85_Con"/>
    <field editable="1" name="Qe_San_85_Con_Spez"/>
    <field editable="1" name="Qe_San_85_Con_f"/>
    <field editable="1" name="Qe_San_85_Spez"/>
    <field editable="1" name="Qe_San_GEG"/>
    <field editable="1" name="Qe_San_GEG_Con"/>
    <field editable="1" name="Qe_San_GEG_Con_Spez"/>
    <field editable="1" name="Qe_San_GEG_Con_f"/>
    <field editable="1" name="Qe_San_GEG_Spez"/>
    <field editable="1" name="Qint"/>
    <field editable="1" name="Qsol"/>
    <field editable="1" name="Qsol_San"/>
    <field editable="1" name="Qve"/>
    <field editable="1" name="Qve_San"/>
    <field editable="1" name="ST_Mod_Anz"/>
    <field editable="1" name="ST_Mod_Art"/>
    <field editable="1" name="ST_Ort"/>
    <field editable="1" name="ST_Tx"/>
    <field editable="1" name="ST_Vorh"/>
    <field editable="1" name="Straßenna"/>
    <field editable="1" name="U_Wert_Ges"/>
    <field editable="1" name="Ve"/>
    <field editable="1" name="WE_leer"/>
    <field editable="1" name="WE_nachSan"/>
    <field editable="1" name="WE_vorh"/>
    <field editable="1" name="WW_NRG"/>
    <field editable="1" name="WW_Ort"/>
    <field editable="1" name="WW_Tech"/>
    <field editable="1" name="WW_Tx"/>
    <field editable="1" name="WW_Versorg"/>
    <field editable="1" name="engergy"/>
    <field editable="1" name="erdnut"/>
    <field editable="1" name="erledigt"/>
    <field editable="1" name="fid"/>
    <field editable="1" name="gebaeudefu"/>
    <field editable="1" name="gml_id"/>
    <field editable="1" name="ha_nr"/>
    <field editable="1" name="layer"/>
    <field editable="1" name="leerstande"/>
    <field editable="1" name="objectid"/>
    <field editable="1" name="ogc_fid"/>
    <field editable="1" name="path"/>
  </editable>
  <labelOnTop>
    <field name="AWS_A" labelOnTop="0"/>
    <field name="AW_Dae_Ant" labelOnTop="0"/>
    <field name="AW_Dae_Mat" labelOnTop="0"/>
    <field name="AW_Dae_WLS" labelOnTop="0"/>
    <field name="AW_Dae_d" labelOnTop="0"/>
    <field name="AW_GS_A" labelOnTop="0"/>
    <field name="AW_Ges_A" labelOnTop="0"/>
    <field name="AW_Giebel_A" labelOnTop="0"/>
    <field name="AW_Mat" labelOnTop="0"/>
    <field name="AW_Oberfl" labelOnTop="0"/>
    <field name="AW_San" labelOnTop="0"/>
    <field name="AW_San_BAK" labelOnTop="0"/>
    <field name="AW_San_BJ" labelOnTop="0"/>
    <field name="AW_Traufe_A" labelOnTop="0"/>
    <field name="AW_U_BAK" labelOnTop="0"/>
    <field name="AW_U_Part" labelOnTop="0"/>
    <field name="A_Ges" labelOnTop="0"/>
    <field name="An" labelOnTop="0"/>
    <field name="AnzLage" labelOnTop="0"/>
    <field name="Area" labelOnTop="0"/>
    <field name="Area_alle" labelOnTop="0"/>
    <field name="BGF" labelOnTop="0"/>
    <field name="BRI" labelOnTop="0"/>
    <field name="Bild 01" labelOnTop="0"/>
    <field name="Bild 02" labelOnTop="0"/>
    <field name="Bild 03" labelOnTop="0"/>
    <field name="Bild 04" labelOnTop="0"/>
    <field name="Bilder1" labelOnTop="0"/>
    <field name="Bilder2" labelOnTop="0"/>
    <field name="Bilder3" labelOnTop="0"/>
    <field name="Bilder4" labelOnTop="0"/>
    <field name="CO2_Best" labelOnTop="0"/>
    <field name="CO2_Best_Spez" labelOnTop="0"/>
    <field name="CO2_EH_100" labelOnTop="0"/>
    <field name="CO2_EH_100_Spez" labelOnTop="0"/>
    <field name="CO2_EH_40" labelOnTop="0"/>
    <field name="CO2_EH_40_Spez" labelOnTop="0"/>
    <field name="CO2_EH_55" labelOnTop="0"/>
    <field name="CO2_EH_55_Spez" labelOnTop="0"/>
    <field name="CO2_EH_70" labelOnTop="0"/>
    <field name="CO2_EH_70_Spez" labelOnTop="0"/>
    <field name="CO2_EH_85" labelOnTop="0"/>
    <field name="CO2_EH_85_Spez" labelOnTop="0"/>
    <field name="CO2_GEG" labelOnTop="0"/>
    <field name="CO2_GEG_Spez" labelOnTop="0"/>
    <field name="DG1_WFL_Verlust" labelOnTop="0"/>
    <field name="DG2_WFL_Verlust" labelOnTop="0"/>
    <field name="DaDae" labelOnTop="0"/>
    <field name="DaDae_A" labelOnTop="0"/>
    <field name="DaDae_U_BAK" labelOnTop="0"/>
    <field name="DaDae_U_Part" labelOnTop="0"/>
    <field name="DaNeigung" labelOnTop="0"/>
    <field name="Da_BAK" labelOnTop="0"/>
    <field name="Da_BJ" labelOnTop="0"/>
    <field name="Da_DN_Bog" labelOnTop="0"/>
    <field name="Da_DN_Cos" labelOnTop="0"/>
    <field name="Da_DN_Sin" labelOnTop="0"/>
    <field name="Da_DN_Tan" labelOnTop="0"/>
    <field name="Da_Dae" labelOnTop="0"/>
    <field name="Da_Dae_Ant" labelOnTop="0"/>
    <field name="Da_Dae_WLS" labelOnTop="0"/>
    <field name="Da_Dae_d" labelOnTop="0"/>
    <field name="Da_De" labelOnTop="0"/>
    <field name="Da_Form" labelOnTop="0"/>
    <field name="Da_H_Ges" labelOnTop="0"/>
    <field name="Da_San" labelOnTop="0"/>
    <field name="Dachgescho" labelOnTop="0"/>
    <field name="Denkmal" labelOnTop="0"/>
    <field name="EG_Nutz" labelOnTop="0"/>
    <field name="ET_Wish" labelOnTop="0"/>
    <field name="Erhalten" labelOnTop="0"/>
    <field name="Fe2_Ant" labelOnTop="0"/>
    <field name="Fe2_BAK" labelOnTop="0"/>
    <field name="Fe2_BJ" labelOnTop="0"/>
    <field name="Fe2_Glas" labelOnTop="0"/>
    <field name="Fe2_Mat" labelOnTop="0"/>
    <field name="Fe3_BAK" labelOnTop="0"/>
    <field name="Fe3_BJ" labelOnTop="0"/>
    <field name="Fe3_Glas" labelOnTop="0"/>
    <field name="Fe3_Mat" labelOnTop="0"/>
    <field name="Fe3_ant" labelOnTop="0"/>
    <field name="Fe4_Ant" labelOnTop="0"/>
    <field name="Fe4_BAK" labelOnTop="0"/>
    <field name="Fe4_BJ" labelOnTop="0"/>
    <field name="Fe4_Glas" labelOnTop="0"/>
    <field name="Fe4_Mat" labelOnTop="0"/>
    <field name="Fe_A" labelOnTop="0"/>
    <field name="Fe_Ant" labelOnTop="0"/>
    <field name="Fe_BAK" labelOnTop="0"/>
    <field name="Fe_BJ" labelOnTop="0"/>
    <field name="Fe_Glas" labelOnTop="0"/>
    <field name="Fe_Mat" labelOnTop="0"/>
    <field name="Fe_U_BAK" labelOnTop="0"/>
    <field name="Fe_U_Part" labelOnTop="0"/>
    <field name="Fertig" labelOnTop="0"/>
    <field name="GE_Leer" labelOnTop="0"/>
    <field name="GE_nachSan" labelOnTop="0"/>
    <field name="GE_vorh" labelOnTop="0"/>
    <field name="G_Gl_N" labelOnTop="0"/>
    <field name="G_Gl_N_San" labelOnTop="0"/>
    <field name="GebZustBT" labelOnTop="0"/>
    <field name="GebZustNRG" labelOnTop="0"/>
    <field name="GebZustSTB" labelOnTop="0"/>
    <field name="Geb_Art" labelOnTop="0"/>
    <field name="Geb_BAK" labelOnTop="0"/>
    <field name="Geb_BJ" labelOnTop="0"/>
    <field name="Geb_Breit" labelOnTop="0"/>
    <field name="Geb_Denkma" labelOnTop="0"/>
    <field name="Geb_Form" labelOnTop="0"/>
    <field name="Geb_Geshoss_H_li" labelOnTop="0"/>
    <field name="Geb_Giebel" labelOnTop="0"/>
    <field name="Geb_Knie" labelOnTop="0"/>
    <field name="Geb_Lage" labelOnTop="0"/>
    <field name="Geb_Lang" labelOnTop="0"/>
    <field name="Geb_Nutz" labelOnTop="0"/>
    <field name="Geb_NutzTx" labelOnTop="0"/>
    <field name="Geb_Sock" labelOnTop="0"/>
    <field name="Geb_Topo" labelOnTop="0"/>
    <field name="Geb_Traufe" labelOnTop="0"/>
    <field name="Geb_Traufe_H" labelOnTop="0"/>
    <field name="Gemeinde" labelOnTop="0"/>
    <field name="Geschosse" labelOnTop="0"/>
    <field name="Gt15_20" labelOnTop="0"/>
    <field name="HET_BAK" labelOnTop="0"/>
    <field name="HET_BJ" labelOnTop="0"/>
    <field name="HET_Blatt" labelOnTop="0"/>
    <field name="HET_Fuell" labelOnTop="0"/>
    <field name="HET_Mat" labelOnTop="0"/>
    <field name="HZ_Bauart" labelOnTop="0"/>
    <field name="HZ_NRG" labelOnTop="0"/>
    <field name="HZ_NRG_Best" labelOnTop="0"/>
    <field name="HZ_NRG_Best_f" labelOnTop="0"/>
    <field name="HZ_NRG_San" labelOnTop="0"/>
    <field name="HZ_NRG_San_f" labelOnTop="0"/>
    <field name="HZ_Ort" labelOnTop="0"/>
    <field name="HZ_Tech" labelOnTop="0"/>
    <field name="HZ_Tx" labelOnTop="0"/>
    <field name="HZ_Versorg" labelOnTop="0"/>
    <field name="ID" labelOnTop="0"/>
    <field name="KD_BAK" labelOnTop="0"/>
    <field name="KD_BJ" labelOnTop="0"/>
    <field name="KD_Dae_A" labelOnTop="0"/>
    <field name="KD_Dae_Ant" labelOnTop="0"/>
    <field name="KD_Dae_Mat" labelOnTop="0"/>
    <field name="KD_Dae_WLS" labelOnTop="0"/>
    <field name="KD_Dae_d" labelOnTop="0"/>
    <field name="KD_San" labelOnTop="0"/>
    <field name="KD_U_BAK" labelOnTop="0"/>
    <field name="KD_U_Part" labelOnTop="0"/>
    <field name="Klasse" labelOnTop="0"/>
    <field name="Kommentar" labelOnTop="0"/>
    <field name="NUF" labelOnTop="0"/>
    <field name="Nutzung" labelOnTop="0"/>
    <field name="OGD_BJ" labelOnTop="0"/>
    <field name="OGD_DaeAnt" labelOnTop="0"/>
    <field name="OGD_DaeMat" labelOnTop="0"/>
    <field name="OGD_Dae_d" labelOnTop="0"/>
    <field name="OGD_San" labelOnTop="0"/>
    <field name="OGD_Vorh" labelOnTop="0"/>
    <field name="OGD_Vorh_2" labelOnTop="0"/>
    <field name="OGD_WLS" labelOnTop="0"/>
    <field name="OG_Nutz" labelOnTop="0"/>
    <field name="PV_Mod_Anz" labelOnTop="0"/>
    <field name="PV_Mod_Art" labelOnTop="0"/>
    <field name="PV_Ort" labelOnTop="0"/>
    <field name="PV_Tx" labelOnTop="0"/>
    <field name="PV_Vorh" labelOnTop="0"/>
    <field name="PV_kWp" labelOnTop="0"/>
    <field name="Pruffall" labelOnTop="0"/>
    <field name="QH_100_Spez" labelOnTop="0"/>
    <field name="QH_40_Spez" labelOnTop="0"/>
    <field name="QH_55_Spez" labelOnTop="0"/>
    <field name="QH_70_Spez" labelOnTop="0"/>
    <field name="QH_85_Spez" labelOnTop="0"/>
    <field name="QH_Best" labelOnTop="0"/>
    <field name="QH_Best_Spez" labelOnTop="0"/>
    <field name="QH_EH_100" labelOnTop="0"/>
    <field name="QH_EH_40" labelOnTop="0"/>
    <field name="QH_EH_55" labelOnTop="0"/>
    <field name="QH_EH_70" labelOnTop="0"/>
    <field name="QH_EH_85" labelOnTop="0"/>
    <field name="QH_GEG" labelOnTop="0"/>
    <field name="QH_GEG_Spez" labelOnTop="0"/>
    <field name="QH_San_100" labelOnTop="0"/>
    <field name="QH_San_40" labelOnTop="0"/>
    <field name="QH_San_55" labelOnTop="0"/>
    <field name="QH_San_70" labelOnTop="0"/>
    <field name="QH_San_85" labelOnTop="0"/>
    <field name="QH_San_GEG" labelOnTop="0"/>
    <field name="QW_Best" labelOnTop="0"/>
    <field name="Qe_Best" labelOnTop="0"/>
    <field name="Qe_Best_Spez" labelOnTop="0"/>
    <field name="Qe_Con" labelOnTop="0"/>
    <field name="Qe_Con_Spez" labelOnTop="0"/>
    <field name="Qe_Con_f" labelOnTop="0"/>
    <field name="Qe_San_100" labelOnTop="0"/>
    <field name="Qe_San_100_Con" labelOnTop="0"/>
    <field name="Qe_San_100_Con_Spez" labelOnTop="0"/>
    <field name="Qe_San_100_Con_f" labelOnTop="0"/>
    <field name="Qe_San_100_Spez" labelOnTop="0"/>
    <field name="Qe_San_40" labelOnTop="0"/>
    <field name="Qe_San_40_Con" labelOnTop="0"/>
    <field name="Qe_San_40_Con_Spez" labelOnTop="0"/>
    <field name="Qe_San_40_Con_f" labelOnTop="0"/>
    <field name="Qe_San_40_Spez" labelOnTop="0"/>
    <field name="Qe_San_55" labelOnTop="0"/>
    <field name="Qe_San_55_Con" labelOnTop="0"/>
    <field name="Qe_San_55_Con_Spez" labelOnTop="0"/>
    <field name="Qe_San_55_Con_f" labelOnTop="0"/>
    <field name="Qe_San_55_Spez" labelOnTop="0"/>
    <field name="Qe_San_70" labelOnTop="0"/>
    <field name="Qe_San_70_Con" labelOnTop="0"/>
    <field name="Qe_San_70_Con_Spez" labelOnTop="0"/>
    <field name="Qe_San_70_Con_f" labelOnTop="0"/>
    <field name="Qe_San_70_Spez" labelOnTop="0"/>
    <field name="Qe_San_85" labelOnTop="0"/>
    <field name="Qe_San_85_Con" labelOnTop="0"/>
    <field name="Qe_San_85_Con_Spez" labelOnTop="0"/>
    <field name="Qe_San_85_Con_f" labelOnTop="0"/>
    <field name="Qe_San_85_Spez" labelOnTop="0"/>
    <field name="Qe_San_GEG" labelOnTop="0"/>
    <field name="Qe_San_GEG_Con" labelOnTop="0"/>
    <field name="Qe_San_GEG_Con_Spez" labelOnTop="0"/>
    <field name="Qe_San_GEG_Con_f" labelOnTop="0"/>
    <field name="Qe_San_GEG_Spez" labelOnTop="0"/>
    <field name="Qint" labelOnTop="0"/>
    <field name="Qsol" labelOnTop="0"/>
    <field name="Qsol_San" labelOnTop="0"/>
    <field name="Qve" labelOnTop="0"/>
    <field name="Qve_San" labelOnTop="0"/>
    <field name="ST_Mod_Anz" labelOnTop="0"/>
    <field name="ST_Mod_Art" labelOnTop="0"/>
    <field name="ST_Ort" labelOnTop="0"/>
    <field name="ST_Tx" labelOnTop="0"/>
    <field name="ST_Vorh" labelOnTop="0"/>
    <field name="Straßenna" labelOnTop="0"/>
    <field name="U_Wert_Ges" labelOnTop="0"/>
    <field name="Ve" labelOnTop="0"/>
    <field name="WE_leer" labelOnTop="0"/>
    <field name="WE_nachSan" labelOnTop="0"/>
    <field name="WE_vorh" labelOnTop="0"/>
    <field name="WW_NRG" labelOnTop="0"/>
    <field name="WW_Ort" labelOnTop="0"/>
    <field name="WW_Tech" labelOnTop="0"/>
    <field name="WW_Tx" labelOnTop="0"/>
    <field name="WW_Versorg" labelOnTop="0"/>
    <field name="engergy" labelOnTop="0"/>
    <field name="erdnut" labelOnTop="0"/>
    <field name="erledigt" labelOnTop="0"/>
    <field name="fid" labelOnTop="0"/>
    <field name="gebaeudefu" labelOnTop="0"/>
    <field name="gml_id" labelOnTop="0"/>
    <field name="ha_nr" labelOnTop="0"/>
    <field name="layer" labelOnTop="0"/>
    <field name="leerstande" labelOnTop="0"/>
    <field name="objectid" labelOnTop="0"/>
    <field name="ogc_fid" labelOnTop="0"/>
    <field name="path" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="AWS_A" reuseLastValue="0"/>
    <field name="AW_Dae_Ant" reuseLastValue="0"/>
    <field name="AW_Dae_Mat" reuseLastValue="0"/>
    <field name="AW_Dae_WLS" reuseLastValue="0"/>
    <field name="AW_Dae_d" reuseLastValue="0"/>
    <field name="AW_GS_A" reuseLastValue="0"/>
    <field name="AW_Ges_A" reuseLastValue="0"/>
    <field name="AW_Giebel_A" reuseLastValue="0"/>
    <field name="AW_Mat" reuseLastValue="0"/>
    <field name="AW_Oberfl" reuseLastValue="0"/>
    <field name="AW_San" reuseLastValue="0"/>
    <field name="AW_San_BAK" reuseLastValue="0"/>
    <field name="AW_San_BJ" reuseLastValue="0"/>
    <field name="AW_Traufe_A" reuseLastValue="0"/>
    <field name="AW_U_BAK" reuseLastValue="0"/>
    <field name="AW_U_Part" reuseLastValue="0"/>
    <field name="A_Ges" reuseLastValue="0"/>
    <field name="An" reuseLastValue="0"/>
    <field name="AnzLage" reuseLastValue="0"/>
    <field name="Area" reuseLastValue="0"/>
    <field name="Area_alle" reuseLastValue="0"/>
    <field name="BGF" reuseLastValue="0"/>
    <field name="BRI" reuseLastValue="0"/>
    <field name="Bild 01" reuseLastValue="0"/>
    <field name="Bild 02" reuseLastValue="0"/>
    <field name="Bild 03" reuseLastValue="0"/>
    <field name="Bild 04" reuseLastValue="0"/>
    <field name="Bilder1" reuseLastValue="0"/>
    <field name="Bilder2" reuseLastValue="0"/>
    <field name="Bilder3" reuseLastValue="0"/>
    <field name="Bilder4" reuseLastValue="0"/>
    <field name="CO2_Best" reuseLastValue="0"/>
    <field name="CO2_Best_Spez" reuseLastValue="0"/>
    <field name="CO2_EH_100" reuseLastValue="0"/>
    <field name="CO2_EH_100_Spez" reuseLastValue="0"/>
    <field name="CO2_EH_40" reuseLastValue="0"/>
    <field name="CO2_EH_40_Spez" reuseLastValue="0"/>
    <field name="CO2_EH_55" reuseLastValue="0"/>
    <field name="CO2_EH_55_Spez" reuseLastValue="0"/>
    <field name="CO2_EH_70" reuseLastValue="0"/>
    <field name="CO2_EH_70_Spez" reuseLastValue="0"/>
    <field name="CO2_EH_85" reuseLastValue="0"/>
    <field name="CO2_EH_85_Spez" reuseLastValue="0"/>
    <field name="CO2_GEG" reuseLastValue="0"/>
    <field name="CO2_GEG_Spez" reuseLastValue="0"/>
    <field name="DG1_WFL_Verlust" reuseLastValue="0"/>
    <field name="DG2_WFL_Verlust" reuseLastValue="0"/>
    <field name="DaDae" reuseLastValue="0"/>
    <field name="DaDae_A" reuseLastValue="0"/>
    <field name="DaDae_U_BAK" reuseLastValue="0"/>
    <field name="DaDae_U_Part" reuseLastValue="0"/>
    <field name="DaNeigung" reuseLastValue="0"/>
    <field name="Da_BAK" reuseLastValue="0"/>
    <field name="Da_BJ" reuseLastValue="0"/>
    <field name="Da_DN_Bog" reuseLastValue="0"/>
    <field name="Da_DN_Cos" reuseLastValue="0"/>
    <field name="Da_DN_Sin" reuseLastValue="0"/>
    <field name="Da_DN_Tan" reuseLastValue="0"/>
    <field name="Da_Dae" reuseLastValue="0"/>
    <field name="Da_Dae_Ant" reuseLastValue="0"/>
    <field name="Da_Dae_WLS" reuseLastValue="0"/>
    <field name="Da_Dae_d" reuseLastValue="0"/>
    <field name="Da_De" reuseLastValue="0"/>
    <field name="Da_Form" reuseLastValue="0"/>
    <field name="Da_H_Ges" reuseLastValue="0"/>
    <field name="Da_San" reuseLastValue="0"/>
    <field name="Dachgescho" reuseLastValue="0"/>
    <field name="Denkmal" reuseLastValue="0"/>
    <field name="EG_Nutz" reuseLastValue="0"/>
    <field name="ET_Wish" reuseLastValue="0"/>
    <field name="Erhalten" reuseLastValue="0"/>
    <field name="Fe2_Ant" reuseLastValue="0"/>
    <field name="Fe2_BAK" reuseLastValue="0"/>
    <field name="Fe2_BJ" reuseLastValue="0"/>
    <field name="Fe2_Glas" reuseLastValue="0"/>
    <field name="Fe2_Mat" reuseLastValue="0"/>
    <field name="Fe3_BAK" reuseLastValue="0"/>
    <field name="Fe3_BJ" reuseLastValue="0"/>
    <field name="Fe3_Glas" reuseLastValue="0"/>
    <field name="Fe3_Mat" reuseLastValue="0"/>
    <field name="Fe3_ant" reuseLastValue="0"/>
    <field name="Fe4_Ant" reuseLastValue="0"/>
    <field name="Fe4_BAK" reuseLastValue="0"/>
    <field name="Fe4_BJ" reuseLastValue="0"/>
    <field name="Fe4_Glas" reuseLastValue="0"/>
    <field name="Fe4_Mat" reuseLastValue="0"/>
    <field name="Fe_A" reuseLastValue="0"/>
    <field name="Fe_Ant" reuseLastValue="0"/>
    <field name="Fe_BAK" reuseLastValue="0"/>
    <field name="Fe_BJ" reuseLastValue="0"/>
    <field name="Fe_Glas" reuseLastValue="0"/>
    <field name="Fe_Mat" reuseLastValue="0"/>
    <field name="Fe_U_BAK" reuseLastValue="0"/>
    <field name="Fe_U_Part" reuseLastValue="0"/>
    <field name="Fertig" reuseLastValue="0"/>
    <field name="GE_Leer" reuseLastValue="0"/>
    <field name="GE_nachSan" reuseLastValue="0"/>
    <field name="GE_vorh" reuseLastValue="0"/>
    <field name="G_Gl_N" reuseLastValue="0"/>
    <field name="G_Gl_N_San" reuseLastValue="0"/>
    <field name="GebZustBT" reuseLastValue="0"/>
    <field name="GebZustNRG" reuseLastValue="0"/>
    <field name="GebZustSTB" reuseLastValue="0"/>
    <field name="Geb_Art" reuseLastValue="0"/>
    <field name="Geb_BAK" reuseLastValue="0"/>
    <field name="Geb_BJ" reuseLastValue="0"/>
    <field name="Geb_Breit" reuseLastValue="0"/>
    <field name="Geb_Denkma" reuseLastValue="0"/>
    <field name="Geb_Form" reuseLastValue="0"/>
    <field name="Geb_Geshoss_H_li" reuseLastValue="0"/>
    <field name="Geb_Giebel" reuseLastValue="0"/>
    <field name="Geb_Knie" reuseLastValue="0"/>
    <field name="Geb_Lage" reuseLastValue="0"/>
    <field name="Geb_Lang" reuseLastValue="0"/>
    <field name="Geb_Nutz" reuseLastValue="0"/>
    <field name="Geb_NutzTx" reuseLastValue="0"/>
    <field name="Geb_Sock" reuseLastValue="0"/>
    <field name="Geb_Topo" reuseLastValue="0"/>
    <field name="Geb_Traufe" reuseLastValue="0"/>
    <field name="Geb_Traufe_H" reuseLastValue="0"/>
    <field name="Gemeinde" reuseLastValue="0"/>
    <field name="Geschosse" reuseLastValue="0"/>
    <field name="Gt15_20" reuseLastValue="0"/>
    <field name="HET_BAK" reuseLastValue="0"/>
    <field name="HET_BJ" reuseLastValue="0"/>
    <field name="HET_Blatt" reuseLastValue="0"/>
    <field name="HET_Fuell" reuseLastValue="0"/>
    <field name="HET_Mat" reuseLastValue="0"/>
    <field name="HZ_Bauart" reuseLastValue="0"/>
    <field name="HZ_NRG" reuseLastValue="0"/>
    <field name="HZ_NRG_Best" reuseLastValue="0"/>
    <field name="HZ_NRG_Best_f" reuseLastValue="0"/>
    <field name="HZ_NRG_San" reuseLastValue="0"/>
    <field name="HZ_NRG_San_f" reuseLastValue="0"/>
    <field name="HZ_Ort" reuseLastValue="0"/>
    <field name="HZ_Tech" reuseLastValue="0"/>
    <field name="HZ_Tx" reuseLastValue="0"/>
    <field name="HZ_Versorg" reuseLastValue="0"/>
    <field name="ID" reuseLastValue="0"/>
    <field name="KD_BAK" reuseLastValue="0"/>
    <field name="KD_BJ" reuseLastValue="0"/>
    <field name="KD_Dae_A" reuseLastValue="0"/>
    <field name="KD_Dae_Ant" reuseLastValue="0"/>
    <field name="KD_Dae_Mat" reuseLastValue="0"/>
    <field name="KD_Dae_WLS" reuseLastValue="0"/>
    <field name="KD_Dae_d" reuseLastValue="0"/>
    <field name="KD_San" reuseLastValue="0"/>
    <field name="KD_U_BAK" reuseLastValue="0"/>
    <field name="KD_U_Part" reuseLastValue="0"/>
    <field name="Klasse" reuseLastValue="0"/>
    <field name="Kommentar" reuseLastValue="0"/>
    <field name="NUF" reuseLastValue="0"/>
    <field name="Nutzung" reuseLastValue="0"/>
    <field name="OGD_BJ" reuseLastValue="0"/>
    <field name="OGD_DaeAnt" reuseLastValue="0"/>
    <field name="OGD_DaeMat" reuseLastValue="0"/>
    <field name="OGD_Dae_d" reuseLastValue="0"/>
    <field name="OGD_San" reuseLastValue="0"/>
    <field name="OGD_Vorh" reuseLastValue="0"/>
    <field name="OGD_Vorh_2" reuseLastValue="0"/>
    <field name="OGD_WLS" reuseLastValue="0"/>
    <field name="OG_Nutz" reuseLastValue="0"/>
    <field name="PV_Mod_Anz" reuseLastValue="0"/>
    <field name="PV_Mod_Art" reuseLastValue="0"/>
    <field name="PV_Ort" reuseLastValue="0"/>
    <field name="PV_Tx" reuseLastValue="0"/>
    <field name="PV_Vorh" reuseLastValue="0"/>
    <field name="PV_kWp" reuseLastValue="0"/>
    <field name="Pruffall" reuseLastValue="0"/>
    <field name="QH_100_Spez" reuseLastValue="0"/>
    <field name="QH_40_Spez" reuseLastValue="0"/>
    <field name="QH_55_Spez" reuseLastValue="0"/>
    <field name="QH_70_Spez" reuseLastValue="0"/>
    <field name="QH_85_Spez" reuseLastValue="0"/>
    <field name="QH_Best" reuseLastValue="0"/>
    <field name="QH_Best_Spez" reuseLastValue="0"/>
    <field name="QH_EH_100" reuseLastValue="0"/>
    <field name="QH_EH_40" reuseLastValue="0"/>
    <field name="QH_EH_55" reuseLastValue="0"/>
    <field name="QH_EH_70" reuseLastValue="0"/>
    <field name="QH_EH_85" reuseLastValue="0"/>
    <field name="QH_GEG" reuseLastValue="0"/>
    <field name="QH_GEG_Spez" reuseLastValue="0"/>
    <field name="QH_San_100" reuseLastValue="0"/>
    <field name="QH_San_40" reuseLastValue="0"/>
    <field name="QH_San_55" reuseLastValue="0"/>
    <field name="QH_San_70" reuseLastValue="0"/>
    <field name="QH_San_85" reuseLastValue="0"/>
    <field name="QH_San_GEG" reuseLastValue="0"/>
    <field name="QW_Best" reuseLastValue="0"/>
    <field name="Qe_Best" reuseLastValue="0"/>
    <field name="Qe_Best_Spez" reuseLastValue="0"/>
    <field name="Qe_Con" reuseLastValue="0"/>
    <field name="Qe_Con_Spez" reuseLastValue="0"/>
    <field name="Qe_Con_f" reuseLastValue="0"/>
    <field name="Qe_San_100" reuseLastValue="0"/>
    <field name="Qe_San_100_Con" reuseLastValue="0"/>
    <field name="Qe_San_100_Con_Spez" reuseLastValue="0"/>
    <field name="Qe_San_100_Con_f" reuseLastValue="0"/>
    <field name="Qe_San_100_Spez" reuseLastValue="0"/>
    <field name="Qe_San_40" reuseLastValue="0"/>
    <field name="Qe_San_40_Con" reuseLastValue="0"/>
    <field name="Qe_San_40_Con_Spez" reuseLastValue="0"/>
    <field name="Qe_San_40_Con_f" reuseLastValue="0"/>
    <field name="Qe_San_40_Spez" reuseLastValue="0"/>
    <field name="Qe_San_55" reuseLastValue="0"/>
    <field name="Qe_San_55_Con" reuseLastValue="0"/>
    <field name="Qe_San_55_Con_Spez" reuseLastValue="0"/>
    <field name="Qe_San_55_Con_f" reuseLastValue="0"/>
    <field name="Qe_San_55_Spez" reuseLastValue="0"/>
    <field name="Qe_San_70" reuseLastValue="0"/>
    <field name="Qe_San_70_Con" reuseLastValue="0"/>
    <field name="Qe_San_70_Con_Spez" reuseLastValue="0"/>
    <field name="Qe_San_70_Con_f" reuseLastValue="0"/>
    <field name="Qe_San_70_Spez" reuseLastValue="0"/>
    <field name="Qe_San_85" reuseLastValue="0"/>
    <field name="Qe_San_85_Con" reuseLastValue="0"/>
    <field name="Qe_San_85_Con_Spez" reuseLastValue="0"/>
    <field name="Qe_San_85_Con_f" reuseLastValue="0"/>
    <field name="Qe_San_85_Spez" reuseLastValue="0"/>
    <field name="Qe_San_GEG" reuseLastValue="0"/>
    <field name="Qe_San_GEG_Con" reuseLastValue="0"/>
    <field name="Qe_San_GEG_Con_Spez" reuseLastValue="0"/>
    <field name="Qe_San_GEG_Con_f" reuseLastValue="0"/>
    <field name="Qe_San_GEG_Spez" reuseLastValue="0"/>
    <field name="Qint" reuseLastValue="0"/>
    <field name="Qsol" reuseLastValue="0"/>
    <field name="Qsol_San" reuseLastValue="0"/>
    <field name="Qve" reuseLastValue="0"/>
    <field name="Qve_San" reuseLastValue="0"/>
    <field name="ST_Mod_Anz" reuseLastValue="0"/>
    <field name="ST_Mod_Art" reuseLastValue="0"/>
    <field name="ST_Ort" reuseLastValue="0"/>
    <field name="ST_Tx" reuseLastValue="0"/>
    <field name="ST_Vorh" reuseLastValue="0"/>
    <field name="Straßenna" reuseLastValue="0"/>
    <field name="U_Wert_Ges" reuseLastValue="0"/>
    <field name="Ve" reuseLastValue="0"/>
    <field name="WE_leer" reuseLastValue="0"/>
    <field name="WE_nachSan" reuseLastValue="0"/>
    <field name="WE_vorh" reuseLastValue="0"/>
    <field name="WW_NRG" reuseLastValue="0"/>
    <field name="WW_Ort" reuseLastValue="0"/>
    <field name="WW_Tech" reuseLastValue="0"/>
    <field name="WW_Tx" reuseLastValue="0"/>
    <field name="WW_Versorg" reuseLastValue="0"/>
    <field name="engergy" reuseLastValue="0"/>
    <field name="erdnut" reuseLastValue="0"/>
    <field name="erledigt" reuseLastValue="0"/>
    <field name="fid" reuseLastValue="0"/>
    <field name="gebaeudefu" reuseLastValue="0"/>
    <field name="gml_id" reuseLastValue="0"/>
    <field name="ha_nr" reuseLastValue="0"/>
    <field name="layer" reuseLastValue="0"/>
    <field name="leerstande" reuseLastValue="0"/>
    <field name="objectid" reuseLastValue="0"/>
    <field name="ogc_fid" reuseLastValue="0"/>
    <field name="path" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"ogc_fid"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
