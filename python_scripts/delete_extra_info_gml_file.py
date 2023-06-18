"""
update gml files
"""

from bs4 import BeautifulSoup
from data_path import data_path


if __name__ == '__main__':

    with open(data_path['burgrieden_original'], 'r', encoding='UTF-8') as city_gml_file:
        soup = BeautifulSoup(city_gml_file, 'xml')

    deleted_tag_list = [
        'core:externalReference', 'core:creationDate', 'gen:stringAttribute', 'bldg:address',
        'bldg:function', 'bldg:roofType', 'bldg:measuredHeight', 'bldg:storeysAboveGround'
    ]

    deleted_tag_attribute_list = [

    ]

    for building_part in soup.find_all('core:cityObjectMember'):
        for deleted_tag in deleted_tag_list:
            for tag in building_part.find_all(deleted_tag):
                tag.extract()

        for deleted_tag_attribute in deleted_tag_attribute_list:
            for tag in building_part.find_all(deleted_tag_attribute):
                for attribute in ['gml:id']:
                    del tag[attribute]

    output = soup.prettify("utf-8")
    with open(data_path["edited_burgrieden"], "wb") as file:
        file.write(output)

    print(soup)
