///update_adjacent_tiles(x,y,size)

/* updates all the neighbouring tiles */

var near, tile_x, tile_y, size;

tile_x = argument0;
tile_y = argument1;
size = argument2;

near = instance_position(tile_x+size,tile_y,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
near = instance_position(tile_x-size,tile_y,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
near = instance_position(tile_x,tile_y+size,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
near = instance_position(tile_x,tile_y-size,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
near = instance_position(tile_x+size,tile_y+size,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
near = instance_position(tile_x-size,tile_y-size,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
near = instance_position(tile_x+size,tile_y-size,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
near = instance_position(tile_x-size,tile_y+size,obj_tile);
if(near != noone) {with(near) {image_index = autotile_get_index();}}
