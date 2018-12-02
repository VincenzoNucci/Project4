var arg, i = 0;

for(; i < argument_count; i++) {
    arg[i] = argument[i];
}

var ds_grid_id = ds_grid_create(5, argument_count);

for(i = 0; i < argument_count; i++) {
    var array = arg[i];
    var array_len = array_length_1d(array);
    for(var j = 0; j < array_len; j++) {
        ds_grid_id[# j, i] = array[j];
    }
}

return ds_grid_id;
