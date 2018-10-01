///string_wrap(string, max_width)

var str = argument0;
var maxWidth = argument1;

var strLen = string_length(str);
var lastSpace = 1;
var subStr, i = 1;

repeat(strLen) {
    subStr = string_copy(str, 1, i);
    if(string_char_at(str, i) == " ")
        lastSpace = i;
    
    if(string_width(subStr) > maxWidth) {
        str = string_delete(str, lastSpace, 1);
        //# indica a capo \n
        str = string_insert("#", str, lastSpace);
    }
    
    i++;    
}

return str;
