///autotile_get_index([open_borders])

/*
    Returns the correct tile index for the tile object calling this script.
    If open_borders (optional) is true, the spaces outside the room size will
    be considered as tiles of the same type (leaving the tiles "open")
*/

var index,size,tile_map,
    north,south,west,east,northEast,northWest,southEast,southWest;

tile_map = global._autotiles_data[? "tile_map"];
size = sprite_width;

//check all directions
north = place_meeting(x,y-size,object_index);
south = place_meeting(x,y+size,object_index);
west = place_meeting(x-size,y,object_index);
east = place_meeting(x+size,y,object_index);

northWest = place_meeting(x-size,y-size,object_index) & west & north;
northEast = place_meeting(x+size,y-size,object_index) & north & east;
southWest = place_meeting(x-size,y+size,object_index) & south & west;
southEast = place_meeting(x+size,y+size,object_index) & south & east;

//change data of the tiles near room border if open_borders is true
if(argument_count > 0 && argument[0]) {
    if(x-size < 0) {west = 1; northWest = north; southWest = south;}
    if(x+size >= room_width) {east = 1; northEast = north; southEast = south;}
    if(y-size < 0) {north = 1; northWest = west; northEast = east;}
    if(y+size >= room_height) {south = 1; southEast = east; southWest = west;}
}

//perform bitwise add to find out which tile to show, and look up into the tile map
index = northWest + 2*northEast + 4*southEast + 8*southWest + 16*west + 32*north + 64*east + 128*south
index = ds_map_find_value(tile_map,string(index));

return index;
