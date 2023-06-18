"""
This script will add additional data like building area, energy demand and Co2 emission the CityGML file
"""
from bs4 import BeautifulSoup
from pandas import ExcelFile, read_excel


def add_new_tag_xlsx_to_gml(panda_data_frame_row, column_name, soup, tag_name, building):
    """
    add new values to xml file
    :param panda_data_frame_row: data frame from panda
    :param column_name: interested columns
    :param soup: root of xml
    :param tag_name: new tag name
    :param building: a part of root
    :return: ---
    """
    value = panda_data_frame_row[column_name].values[0]  # like the value of gml_id
    new_tag_value = f'<gen:value>{value}</gen:value>'
    string_attribute_tag = soup.new_tag('gen:stringAttribute')
    string_attribute_tag['name'] = tag_name
    string_attribute_tag.append(new_tag_value)
    building.insert(1, string_attribute_tag)


if __name__ == '__main__':

    with open("Data/Stoeckach_LoD2.gml", 'r') as file:
        soup = BeautifulSoup(file, 'xml')

    with ExcelFile("Data/HeatDemandEdited.xlsx") as reader:
        data_frame = read_excel(reader)

    print(len(data_frame.columns))
    data_frame.insert(len(data_frame.columns), "Co2 Emission", data_frame["Total Yearly Heat+DHW demand"] * 0.23)

    print(data_frame["Co2 Emission"])
    print(data_frame.columns)

    new_tag_names = [
        ('co2_specific', 'co2 specific'),
        ('heated_area', 'Heated area'),
        ('usage', 'PrimaryUsageZoneType'),
        ('building_type', 'BuildingType'),
        ('year_of_construction', 'Year of construction'),
        ('footprint_area', 'Footprint area'),
        ('roof_area', 'Total roof area'),
        ('heated_volume', 'Heated volume'),
        ('heat_demand', 'Total Yearly Heat+DHW demand'),
        ('heat_demand_jan', 'January Heating Demand'),
        ('heat_demand_feb', 'February Heating Demand'),
        ('heat_demand_mar', 'March Heating Demand'),
        ('heat_demand_apr', 'April Heating Demand'),
        ('heat_demand_may', 'May Heating Demand'),
        ('heat_demand_jun', 'June Heating Demand'),
        ('heat_demand_jul', 'July Heating Demand'),
        ('heat_demand_aug', 'August Heating Demand'),
        ('heat_demand_sep', 'September Heating Demand'),
        ('heat_demand_oct', 'October Heating Demand'),
        ('heat_demand_nov', 'November Heating Demand'),
        ('heat_demand_dec', 'December Heating Demand'),
        ('CO2', 'Co2 Emission'),
    ]

    new_tag_counter = 0
    for count, building_part in enumerate(soup.find_all('bldg:BuildingPart')):
        building_gml_id = building_part.attrs["gml:id"]
        selected_row = data_frame.loc[data_frame["GMLId"] == building_gml_id]
        if len(selected_row.values) != 0:
            for new_tag_name in new_tag_names:
                add_new_tag_xlsx_to_gml(selected_row, new_tag_name[1], soup, new_tag_name[0], building_part)
            new_tag_counter += 1

    for core_uri in soup.find_all('core:externalReference'):
        core_uri.extract()

    with open("Data/new_gml_file.gml", 'w') as writer_file:
        writer_file.write(str(soup.prettify(formatter=None)))
    print('Finish')
