let gmlTagValues = {
    'GML ID': 'GML ID',
    'Energiebedarf': 'Energiebedarf',
    'Energieverbraucht': 'Energieverbraucht',
    'CO2': 'CO2',
    'Area': 'Area',
    'Baujahr': 'Baujahr',
    'Art': 'Art',
    'Energiebedarf (Sanierung 100)': 'Energiebedarf (Sanierung 100)',
    'Energiebedarf (Sanierung 40)': 'Energiebedarf (Sanierung 40)'
}
let description = '<body>'
Object.keys(gmlTagValues).forEach(key => {
    console.log(`${key}: ${gmlTagValues[key]}`);
    description += `${gmlTagValues[key]} - `;
});
description = description + '<body/>'

console.log(description);