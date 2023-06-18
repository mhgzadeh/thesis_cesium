class GeometryGenerator {

    constructor(viewer) {
        this.viewer = viewer;
    };

    cesiumPolygon = () => { };

    cesiumLineString = (coordArray, width, color, outlineWidth, outlineColor) => {
        this.viewer.entities.add({
            polyline: {
                positions: Cesium.Cartesian3.fromDegreesArrayHeights(coordArray),
                width: width,
                material: new Cesium.PolylineOutlineMaterialProperty({
                    color: color,
                    outlineWidth: outlineWidth,
                    outlineColor: outlineColor,
                }),
            },
        });
    };

};

export default GeometryGenerator;