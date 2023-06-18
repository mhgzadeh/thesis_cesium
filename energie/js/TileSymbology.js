class TileSymbology {

    constructor(cesium3dTileSet) {
        this.cesium3dTileSet = cesium3dTileSet
    }
    
    energyDemand = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${Energiebedarf}) > 0",
            "color": {
                "conditions": [
                    ['Number(${Energiebedarf}) <= 15000', "color('#1a9641')"],
                    ['Number(${Energiebedarf}) < 25000', "color('#8acc62')"],
                    ['Number(${Energiebedarf}) < 35000', "color('#dcf09e')"],
                    ['Number(${Energiebedarf}) < 45000', "color('#ffe99a')"],
                    ['Number(${Energiebedarf}) < 60000', "color('#f69053')"],
                    ['Number(${Energiebedarf}) > 60001', "color('#d7191c')"],
                ]
            },
        });
    }

    energyConsumption = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${Energieverbraucht}) > 0",
            "color": {
                "conditions": [
                    ['Number(${Energieverbraucht}) <= 15000', "color('#1a9641')"],
                    ['Number(${Energieverbraucht}) < 25000', "color('#8acc62')"],
                    ['Number(${Energieverbraucht}) < 35000', "color('#dcf09e')"],
                    ['Number(${Energieverbraucht}) < 45000', "color('#ffe99a')"],
                    ['Number(${Energieverbraucht}) < 60000', "color('#f69053')"],
                    ['Number(${Energieverbraucht}) > 60001', "color('#d7191c')"],
                ]
            },
        });
    }

    co2 = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${CO2}) > 0",
            "color": {
                "conditions": [
                    ['Number(${CO2}) <= 3000', "color('#1a9641')"],
                    ['Number(${CO2}) < 5000', "color('#8acc62')"],
                    ['Number(${CO2}) < 11000', "color('#dcf09e')"],
                    ['Number(${CO2}) < 15000', "color('#ffe99a')"],
                    ['Number(${CO2}) < 25000', "color('#f69053')"],
                    ['Number(${CO2}) > 25000', "color('#d7191c')"],
                ]
            },
        });
    }

    qe100 = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${qe_san_100}) > 0",
            "color": {
                "conditions": [
                    ['Number(${qe_san_100}) <= 15000', "color('#1a9641')"],
                    ['Number(${qe_san_100}) < 25000', "color('#8acc62')"],
                    ['Number(${qe_san_100}) < 35000', "color('#dcf09e')"],
                    ['Number(${qe_san_100}) < 45000', "color('#ffe99a')"],
                    ['Number(${qe_san_100}) < 60000', "color('#f69053')"],
                    ['Number(${qe_san_100}) > 60001', "color('#d7191c')"],
                ]
            },
        });
    }

    qe40 = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${qe_san_40}) > 0",
            "color": {
                "conditions": [
                    ['Number(${qe_san_40}) <= 15000', "color('#1a9641')"],
                    ['Number(${qe_san_40}) < 25000', "color('#8acc62')"],
                    ['Number(${qe_san_40}) < 35000', "color('#dcf09e')"],
                    ['Number(${qe_san_40}) < 45000', "color('#ffe99a')"],
                    ['Number(${qe_san_40}) < 60000', "color('#f69053')"],
                    ['Number(${qe_san_40}) > 60001', "color('#d7191c')"],
                ]
            },
        });
    }

    co2100 = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${co2_100}) > 0",
            "color": {
                "conditions": [
                    ['Number(${co2_100}) <= 3000', "color('#1a9641')"],
                    ['Number(${co2_100}) < 5000', "color('#8acc62')"],
                    ['Number(${co2_100}) < 11000', "color('#dcf09e')"],
                    ['Number(${co2_100}) < 15000', "color('#ffe99a')"],
                    ['Number(${co2_100}) < 25000', "color('#f69053')"],
                    ['Number(${co2_100}) > 25000', "color('#d7191c')"],
                ]
            },
        });
    }

    co240 = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${co2_40}) > 0",
            "color": {
                "conditions": [
                    ['Number(${co2_40}) <= 3000', "color('#1a9641')"],
                    ['Number(${co2_40}) < 5000', "color('#8acc62')"],
                    ['Number(${co2_40}) < 11000', "color('#dcf09e')"],
                    ['Number(${co2_40}) < 15000', "color('#ffe99a')"],
                    ['Number(${co2_40}) < 25000', "color('#f69053')"],
                    ['Number(${co2_40}) > 25000', "color('#d7191c')"],
                ]
            },
        });
    }

    pv = () => {
        this.cesium3dTileSet.style = new Cesium.Cesium3DTileStyle({
            "show": "Number(${pv}) > 0",
            "color": {
                "conditions": [
                    ['Number(${pv}) < 1000', "color('#377eb8')"],
                    ['Number(${pv}) > 1000', "color('#cacaca')"],
                ]
            },
        });
    }
};

export default TileSymbology;