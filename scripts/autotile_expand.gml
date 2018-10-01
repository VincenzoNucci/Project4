///autotile_expand(background,columns)

/*
    Returns a surface containing the expanded tileset for the provided background.
    Columns is the number of tiles per row in the resulting surface.
*/

var tileset,exp_map,surface,t_size,p_size,rows,cols;

tileset = argument0;
exp_map = global._autotiles_data[? "exp_map"];
p_size = background_get_width(tileset) / 4;
t_size = p_size * 2;
cols = argument1;
rows = ceil(48 / cols);
surface = surface_create(t_size*cols,t_size*rows);

surface_set_target(surface);
draw_clear_alpha(c_black,0);

/* using the expansion matrix, each piece of the compressed tileset is drawn to the
 surface at the right place */
var val,row,col,tile,i,j_x,_y;

for(i = 0; i < ds_list_size(exp_map); i+=4) {
    tile = floor(i / 4); //get tile number
    _x = (tile mod cols) * t_size; //x position of the tile
    _y = floor(tile / cols) * t_size //y position of the tile
    
    for(j = 0; j < 4; j++) {
        val = exp_map[| i+j];
        row = floor(val / 4);
        col = val mod 4;

        draw_background_part(tileset,col*p_size,row*p_size,p_size,p_size,_x + (j mod 2) * p_size,_y + floor(j / 2) * p_size);
    }
}

surface_reset_target();
return surface;
