///autotile_init(autotiles_data_path)
/*
    Loads the required data that tells the autotiling system how to
    expand and display autotiles.
    Returns the data that needs to be passed to other functions.
*/

var file;

file = file_text_open_read(argument0);
global._autotiles_data = json_decode(file_text_read_string(file));
file_text_close(file);
