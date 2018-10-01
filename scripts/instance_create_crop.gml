///instance_create_crop(x,y,crop_type)
var
//GRID SNAPPING
mouse_xx = argument0,
mouse_yy = argument1,
cs = obj_game.cellSize,
gx = mouse_xx div cs,
gy = mouse_yy div cs,
crop_type = argument2,
instancesGrid = obj_crops.ds_crops_instances,
cell = instancesGrid[# gx,gy];

//Controllo se non esiste già un crop in quella posizione
if(cell != 0) {
    show_debug_message("There is already something in there");
    return false;
}

var
xx = gx * cs,
yy = gy * cs;

//Controllo se dove sto per mettere il crop è un soil
var tile = tile_layer_find(obj_game.tilesDepthSoil,mouse_xx,mouse_yy);

    if(tile == -1) {
        show_debug_message(string("There is no soil here"));
        return false;
    } else {
        show_debug_message("There is soil here");
    }

//CREO L'ISTANZA DEL CROP
var crop_inst = instance_create(xx + (cs / 2),yy + (cs / 2),obj_crop);
//Assegno l'istanza appena creata nella grid che mi evita i doppioni
instancesGrid[# gx,gy] = crop_inst;

//ASSEGNO ALL'ISTANZA CREATA LE CARATTERISTICHE DI CROP IN BASE AL TIPO
with(crop_inst) {
    cropType = crop_type;
    growthStageDuration = obj_crops.ds_crops_types[# 0, cropType];
}

return crop_inst;
