///respawn_crop(grid_x, grid_y, crop_type, days_old)

var 
cs = obj_game.cellSize,
xx = argument0 * cs,
yy = argument1 * cs,
crop_types_grid = obj_crops.ds_crops_types,
crop_type = argument2,
days_old = argument3;

var cropInst = instance_create(xx + (cs / 2), yy + (cs / 2), obj_crop);
//Aggiunge la crop alle istanze di crop nella stanza
ds_crops_instances[# xx, yy] = cropInst; 

with(cropInst) {
    cropType = crop_type;
    daysOld = days_old;
    growthStageDuration = crop_types_grid[# 0, crop_type];   
    
    if(growthStage < maxGrowthStage) {
        daysOld += 1;
        growthStage = daysOld div growthStageDuration;
    } else {
        growthStage = maxGrowthStage;
        fullyGrown = true;
        alarm[0] = 1;
    }
}

return cropInst;
