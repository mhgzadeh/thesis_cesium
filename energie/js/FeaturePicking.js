class FeaturePicking {

    constructor(viewer) {
        this.viewer = viewer
        this.selected = {
            feature: undefined,
            originalColor: new Cesium.Color(),
        };
        this.selectedEntity = new Cesium.Entity();
        this.clickHandler = viewer.screenSpaceEventHandler.getInputAction(
            Cesium.ScreenSpaceEventType.LEFT_CLICK
        );
        this.silhouetteYellow = this._configSilhouettes(Cesium.Color.YELLOW);
        this.silhouetteGreen = this._configSilhouettes(Cesium.Color.LIME);
        this._addSilhouettesToProcessStages();
    }


    _configSilhouettes = (color, length = 1, selectedEntity = []) => {
        const silhouetteColor = Cesium.PostProcessStageLibrary.createEdgeDetectionStage();
        silhouetteColor.uniforms.color = color;
        silhouetteColor.uniforms.length = length;
        silhouetteColor.selected = selectedEntity;
        return silhouetteColor
    }

    _addSilhouettesToProcessStages = () => {
        this.viewer.scene.postProcessStages.add(
            Cesium.PostProcessStageLibrary.createSilhouetteStage([
                this.silhouetteGreen,
                this.silhouetteYellow,
            ])
        );
    }

    featureColorOnHover = () => {
        // Silhouette a feature green on hover.
        this.viewer.screenSpaceEventHandler.setInputAction((movement) => {
            // If a feature was previously highlighted, undo the highlight
            this.silhouetteYellow.selected = [];

            // Pick a new feature
            const pickedFeature = this.viewer.scene.pick(movement.endPosition);

            // Highlight the feature if it's not already selected.
            if (pickedFeature !== this.selected.feature) {
                this.silhouetteYellow.selected = [pickedFeature];
            }
        },
            Cesium.ScreenSpaceEventType.MOUSE_MOVE);
    };

    _infoBox = (gmlTagValues, pickedFeature) => {
        const featureName = pickedFeature.getProperty(gmlTagValues['GML ID']);
        this.selectedEntity.name = `ID: ${featureName}`;
        this.selectedEntity.description =
            'Loading <div class="cesium-infoBox-loading"></div>';
        this.viewer.selectedEntity = this.selectedEntity;
        let selectedEntityDescription = '<table class="cesium-infoBox-defaultTable"><tbody>';
        Object.keys(gmlTagValues).forEach(key => {
            selectedEntityDescription += `<tr><th>${gmlTagValues[key]}</th><td>${pickedFeature.getProperty(key)}</td></tr>`;
        });
        selectedEntityDescription += '</tbody></table>';

        this.selectedEntity.description = selectedEntityDescription;
    };

    featureColorOnSelectionInfoBox = (gmlTagValues) => {
        // Silhouette a feature on selection and show metadata in the InfoBox.
        this.viewer.screenSpaceEventHandler.setInputAction((movement) => {
            // If a feature was previously selected, undo the highlight
            this.silhouetteGreen.selected = [];

            // Pick a new feature
            const pickedFeature = this.viewer.scene.pick(movement.position);
            if (!Cesium.defined(pickedFeature)) {
                this.clickHandler(movement);
                return;
            }

            // Select the feature if it's not already selected
            if (this.silhouetteGreen.selected[0] === pickedFeature) {
                return;
            }

            // Save the selected feature's original color
            const highlightedFeature = this.silhouetteGreen.selected[0];
            if (pickedFeature === highlightedFeature) {
                this.silhouetteGreen.selected = [];
            }

            // Highlight newly selected feature
            this.silhouetteGreen.selected = [pickedFeature];

            // Set feature infobox description
            this._infoBox(gmlTagValues, pickedFeature);

        },
            Cesium.ScreenSpaceEventType.LEFT_CLICK);
    };
};

export default FeaturePicking;