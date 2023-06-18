"""
This script will project the buildings to the z = 0
"""
from bs4 import BeautifulSoup
from data_path import data_path

if __name__ == '__main__':

    with open(data_path["cesium_burgrieden"], 'r', encoding='UTF-8') as file:
        soup = BeautifulSoup(file, 'xml')

    building_counter = 0
    ground_counter = 0
    for num, building_part in enumerate(soup.find_all('bldg:Building')):
        ground_surface = building_part.find('bldg:GroundSurface')
        wall_surface = building_part.find('bldg:WallSurface')
        building_counter += 1

        min_coordinates = None

        if ground_surface is not None:
            ground_counter += 1
            # print(ground_surface)
            ground_surface_pos_list = ground_surface.find('gml:posList')
            # print(ground_surface_pos_list)
            coordinates = ground_surface_pos_list.getText().replace('\n', '').replace('   ', '').replace('  ',
                                                                                                         ' ').split()
            coordinates_float = list(map(lambda x: float(x), coordinates))
            min_coordinates = min(coordinates_float)
        elif wall_surface is not None:
            wall_surface_pos_list = wall_surface.find('gml:posList')
            # print(ground_surface_pos_list)
            coordinates = wall_surface_pos_list.getText().replace('\n', '').replace('   ', '').replace('  ',
                                                                                                       ' ').split()
            coordinates_float = list(map(lambda x: float(x), coordinates))
            min_coordinates = min(coordinates_float)

        if min_coordinates is not None:
            for pos_list in building_part.find_all('gml:posList'):
                pos_coordinates = pos_list.getText().replace('\n', '').replace('   ', '').replace('  ', ' ').split()
                pos_coordinates_float = list(map(lambda x: float(x), pos_coordinates))
                for i in range(2, len(pos_coordinates_float), 3):
                    pos_coordinates_float[i] = pos_coordinates_float[i] - min_coordinates
                    building_z_0 = ' '.join(list(map(lambda x: str(x), pos_coordinates_float)))
                    # print(coordinates_z_0)
                    pos_list.string.replace_with(building_z_0)
            ground_counter += 1
        # print(wall_surface)

    print(building_counter)
    print(ground_counter)

    output = str(soup.prettify(formatter=None))
    with open(data_path["cesium_burgrieden_0"], "w") as file:
        file.write(output)
    print('Finish')
