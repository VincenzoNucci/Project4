var
spacing = 64,
buttonSpacing = 23,
menuX = view_wport[0] / 4,
menuY = view_hport[0] / 4,
maxStringLength = 0,
maxButtons = argument_count,
buttonX = menuX + 64,
buttonY = menuY + 32;

for(var l = 0; l < argument_count; l++) {
    if(maxStringLength < string_length(argument[l])) {
        maxStringLength = string_length(argument[l]);
    }
}

//MAX STRING LENGTH INFLUISCE SULLA LARGHEZZA
maxStringLength *= 2;
//MAXBUTTONS INFLUISCE SULL'ALTEZZA
maxButtons *= 2;
//draw_text(0,0,"MaxStringLength: " + string(maxStringLength));

//DISEGNA IL BORDO IN ALTO A SINISTRA
draw_sprite_part_ext(spr_gui_2,0,865,398,18,18,menuX, menuY,2,2,c_white,1);
//DISEGNA IL PEZZO CENTRALE IN ALTO
for(var i = 1; i < maxStringLength + 1; i++) {
    draw_sprite_part_ext(spr_gui,0,98,79,64,64,menuX + (spacing * i), menuY,1,1,c_white,1);
}
//DISEGNA IL BORDO IN ALTO A DESTRA
draw_sprite_part_ext(spr_gui,0,164,79,64,64,menuX + spacing * maxStringLength, menuY,1,1,c_white,1);

//DISEGNA IL FRAME MIDDLE IN BASE A QUANTI PULSANTI DEVE DISEGNARE
for(var i = 1; i < maxButtons + 1; i++)
    draw_sprite_part_ext(spr_gui,0,955,47,64,64,menuX, menuY + spacing * i,1,1,c_white,1);
//DISEGNA IL FRAME IN MEZZO SENZA BORDI
for(var g = 1; g < maxStringLength + 1; g++) {
    for(var i = 1; i < maxButtons + 1; i++)
        draw_sprite_part_ext(spr_gui,0,1022,47,64,64,menuX + spacing * g, menuY + spacing * i,1,1,c_white,1);
}

//DISEGNA IL FRAME DESTRO CENTRALE
for(var i = 1; i < maxButtons + 1; i++)
    draw_sprite_part_ext(spr_gui,0,1088,47,64,64,menuX + spacing * maxStringLength, menuY + spacing * i,1,1,c_white,1);
    
//DISEGNA IL BORDO DEL FRAME FINALE SINISTRO
draw_sprite_part_ext(spr_gui,0,955,159,64,64,menuX, menuY + spacing * maxButtons,1,1,c_white,1);

//DISEGNA IL BORDO FINALE CENTRALE
for(var i = 1; i < maxStringLength + 1; i++) {
    draw_sprite_part_ext(spr_gui,0,1022,159,64,64,menuX + (spacing * i), menuY + spacing * maxButtons,1,1,c_white,1);
}

//DISEGNA IL BORDO FINALE DESTRO
draw_sprite_part_ext(spr_gui,0,1088,159,64,64,menuX + spacing * maxStringLength, menuY + spacing * maxButtons,1,1,c_white,1);

//DISEGNA I BOTTONI COL IL TESTO SCRITTO SUGLI ARGUMENTS
var valign = maxButtons * 32 / 2,
    halign = maxStringLength * 32 / 2;

//DISEGNO LA PRIMA PARTE DEL BOTTONE
draw_sprite_part_ext(spr_gui,0,634,118,23,23,buttonX,buttonY,2,2,c_white,1);

//DISEGNO LA PARTE CENTRALE DEL BOTTONE IN BASE AL TESTO MASSIMO
for(var i = 1; i < maxStringLength / 2 + 1; i++)
    draw_sprite_part_ext(spr_gui,0,659,118,23,23,buttonX + buttonSpacing * i,buttonY,2,2,c_white,1);
