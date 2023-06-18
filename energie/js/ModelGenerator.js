class ModelGenerator {

   constructor(viewer) {
      this.viewer = viewer;
      this.panelIdArray = [];
   };

   flyToEntity = (x, y, z, omga = 0, phi = -35, kappa = 0) => {
      this.viewer.camera.flyTo({
         destination: new Cesium.Cartesian3.fromDegrees(
            x + 0.0002, y - 0.0008, z + 50
         ),
         orientation: {
            heading: Cesium.Math.toRadians(omga),
            pitch: Cesium.Math.toRadians(phi),
            roll: Cesium.Math.toRadians(kappa)
         },
      });
   }

   removeEntitiesById = (idArray = this.panelIdArray) => {
      idArray.forEach(element => {
         console.log(element);
         this.viewer.entities.removeById(element);
      });
   };

   removeAllEntities = () => {
      console.log('All elements deleted');
      this.viewer.entities.removeAll();
   };

   _createModel = (lon, lat, alt, url, id, heading = 0, pitch = 0, roll = 0) => {
      const position = Cesium.Cartesian3.fromDegrees(lon, lat, alt);
      const headingPitchRoll = new Cesium.HeadingPitchRoll(
         Cesium.Math.toRadians(heading),
         Cesium.Math.toRadians(pitch),
         Cesium.Math.toRadians(roll)
      );
      const orientation = Cesium.Transforms.headingPitchRollQuaternion(
         position,
         headingPitchRoll
      );
      this.viewer.entities.add({
         name: url,
         position: position,
         orientation: orientation,
         model: { uri: url },
         id: id
      });
   };

   generateModelById = (objectUrl, objectsLocation, headingPitchRoll = [0, 0, 0], objectName = 'id', saveId = true, flyTo = true, extraObj = {status: false, name:'id'}) => {
      if (extraObj.status == false) {
         this.panelIdArray = [];
      } else {
         this.panelIdArray = [];
         this.panelIdArray.push(extraObj.name);
      };
      console.log(this.panelIdArray);
      for (let i = 0; i < objectsLocation.length; ++i) {
         const lon = objectsLocation[i].properties.lon;
         const lat = objectsLocation[i].properties.lat;
         const alt = objectsLocation[i].properties.alt;
         let id = objectName + i;
         if (saveId == true) {
            this._createModel(lon, lat, alt, objectUrl, id, headingPitchRoll[0], headingPitchRoll[1], headingPitchRoll[2]);
            this.panelIdArray.push(id)
         } else {
            this._createModel(lon, lat, alt, objectUrl, id, headingPitchRoll[0], headingPitchRoll[1], headingPitchRoll[2]);
         };

         if (i == parseInt(objectsLocation.length - 1) && flyTo == true) {
            this.flyToEntity(lon, lat, alt)
         };
      };
      console.log(this.panelIdArray);
   };

   generateSimpleModel = (objectUrl, objectsLocation, headingPitchRoll = [0, 0, 0]) => {
      for (let i = 0; i < objectsLocation.length; ++i) {
         const lon = objectsLocation[i].properties.lon;
         const lat = objectsLocation[i].properties.lat;
         const alt = objectsLocation[i].properties.alt;
         this._createModel(lon, lat, alt, objectUrl, headingPitchRoll[0], headingPitchRoll[1], headingPitchRoll[2]);
      };
   };

};

export default ModelGenerator;