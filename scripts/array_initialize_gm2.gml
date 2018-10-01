///array_initialize_gm2(values...)

var valuesNum = argument_count;
var array = array_create(valuesNum);

for(var i = 0; i < valuesNum; i++) {
    array[i] = argument[i];    
}

return array;
