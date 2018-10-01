var
spacing = 48,
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
maxStringLength *= 1;
//MAXBUTTONS INFLUISCE SULL'ALTEZZA
maxButtons *= 1;

draw_set_alpha(0.4);
draw_rectangle_colour(menuX,menuY,menuX + maxStringLength * spacing,menuY+maxButtons * spacing,c_blue,c_blue,c_blue,c_blue,false);
draw_set_alpha(1);
