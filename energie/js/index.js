'use strict';
import ModelGenerator from "./ModelGenerator.js";
import { agriPvPanel, openSpaceParkingPanel, traktorPath } from "./coordinates.js";
import FeaturePicking from './FeaturePicking.js';
import TileSymbology from "./tileSymbology.js";
import GeometryGenerator from "./GeometryGenerator.js";
import { gmlTagValues, cesiumAccessToken, cesiumTime, urlPanel, targetLocation, boundary, boundryAgriPanel } from "./cesiumConfig.js";
import MovingObject from "./MovingObject.js";

Cesium.Ion.defaultAccessToken = cesiumAccessToken;

if (typeof Cesium !== 'undefined') {
    window.startupCalled = true;
    const viewer = new Cesium.Viewer("cesiumContainer", {
        shouldAnimate: true,
    });

    Cesium.JulianDate.fromIso8601(cesiumTime['julainDateIsp']);
    viewer.clock.currentTime = new Cesium.JulianDate(cesiumTime['currentJulianTime']);
    viewer.clock.multiplier = cesiumTime['clockMltiplier'];

    let btnRadioType1 = document.getElementById('btn-radio-type-1');
    let btnRadioType2 = document.getElementById('btn-radio-type-2');
    let btnRadioType3 = document.getElementById('btn-radio-type-3');
    let checkBoxShadow = document.getElementById('check-box-shadow');

    // Boundary
    const geometryGenerator = new GeometryGenerator(viewer);
    geometryGenerator.cesiumLineString(
        boundary['xyz'],
        boundary['width'],
        boundary['color'],
        boundary['outlineWidth'],
        boundary['outlineColor']
    );

    // generate the garage 3D model
    const modelGenerator = new ModelGenerator(viewer);
    modelGenerator.generateModelById(
        urlPanel['garageWithCar'],
        [openSpaceParkingPanel.features[0], openSpaceParkingPanel.features[openSpaceParkingPanel.features.length - 1]],
        [215, 0, 0],
        'garageCar',
        false,
        false
    );
    modelGenerator.generateModelById(
        urlPanel['garage'],
        openSpaceParkingPanel.features.slice(1, openSpaceParkingPanel.features.length - 1),
        [215, 0, 0],
        'garage',
        false,
        false
    );

    btnRadioType1.onclick = () => {
        if (btnRadioType1.getAttribute("checked") == null) {
            btnRadioType1.setAttribute("checked", "true");
            btnRadioType1.checked = true;
            btnRadioType3.removeAttribute("checked");
            btnRadioType3.checked = false;
            btnRadioType2.removeAttribute("checked");
            btnRadioType2.checked = false;

            modelGenerator.removeEntitiesById();
            modelGenerator.generateModelById(urlPanel['ground'], agriPvPanel.features, [0, 0, 0], 'agri');
            geometryGenerator.cesiumLineString(
                boundryAgriPanel['xyz'],
                boundryAgriPanel['width'],
                boundryAgriPanel['color'],
                boundryAgriPanel['outlineWidth'],
                boundryAgriPanel['outlineColor']
            );
        }
    };

    btnRadioType2.onclick = () => {
        if (btnRadioType2.getAttribute("checked") == null) {
            btnRadioType2.setAttribute("checked", "true");
            btnRadioType2.checked = true;
            btnRadioType3.removeAttribute("checked");
            btnRadioType3.checked = false;
            btnRadioType1.removeAttribute("checked");
            btnRadioType1.checked = false;

            modelGenerator.removeEntitiesById();
            modelGenerator.generateModelById(urlPanel['vertical'], agriPvPanel.features, [0, 0, 0], 'agri', true, false, { status: true, name: 'traktor' });
            const movingObject = new MovingObject(viewer, traktorPath);
            movingObject.addMovableEntityToViewer(urlPanel['traktor']);
        }
    };

    btnRadioType3.onclick = () => {
        if (btnRadioType3.getAttribute("checked") == null) {
            btnRadioType3.setAttribute("checked", "true");
            btnRadioType3.checked = true;
            btnRadioType2.removeAttribute("checked");
            btnRadioType2.checked = false;
            btnRadioType1.removeAttribute("checked");
            btnRadioType1.checked = false;

            modelGenerator.removeEntitiesById();
            modelGenerator.generateModelById(urlPanel['agriSolar'], agriPvPanel.features, [0, 0, 0], 'agri', true, false);
        }
    };

    checkBoxShadow.onclick = () => {
        if (checkBoxShadow.checked == true) {
            viewer.shadows = true;
        } else {
            viewer.shadows = false;
        }
    };


    const cesium3dTileSet = viewer.scene.primitives.add(new Cesium.Cesium3DTileset({
        url: urlPanel['tileset'],
    }));

    viewer.scene.primitives.add(cesium3dTileSet);
    viewer.scene.camera.setView(targetLocation);

    const tileSymbology = new TileSymbology(cesium3dTileSet);
    tileSymbology.energyDemand('Energiebedarf');

    var menu = document.getElementById("dropdown");

    menu.options[0].onselect = function () {
        tileSymbology.energyDemand('Energiebedarf');
    };

    menu.options[1].onselect = function () {
        tileSymbology.energyConsumption('Energieverbraucht');
    };

    menu.options[2].onselect = function () {
        tileSymbology.co2('CO2');
    };

    menu.options[3].onselect = function () {
        tileSymbology.qe100('qe_san_100');
    };

    menu.options[4].onselect = function () {
        tileSymbology.qe40('qe_san_40');
    };

    menu.options[5].onselect = function () {
        tileSymbology.co2100('co2_100');
    };

    menu.options[6].onselect = function () {
        tileSymbology.co240('co2_40');
    };

    menu.options[7].onselect = function () {
        tileSymbology.pv('pv');
    };

    menu.onchange = function () {
        var item = menu.options[menu.selectedIndex];
        if (item && typeof item.onselect === "function") {
            item.onselect();
        }
    };

    // Information about the currently selected feature such as hover or 
    // selected color and cesium info box values
    const threeDtileFeaturePicking = new FeaturePicking(viewer);
    threeDtileFeaturePicking.featureColorOnHover();
    threeDtileFeaturePicking.featureColorOnSelectionInfoBox(gmlTagValues);

};