/// @desc Returns array of sylls
/// @arg file name


var filename = argument0
var syll;

var file;
var s, n, len;

file = file_text_open_read(filename)
n = 0
while not file_text_eof(file) {
	s = file_text_readln(file)
	while string_pos("'", s)>0 {
		s = string_copy(s, string_pos("'", s)+1, string_length(s))
		syll[n] = string_copy(s, 1, string_pos("'", s)-1)
//		show_debug_message(syll[n])
		s = string_copy(s, string_pos("'", s)+1, string_length(s))
		n++
	}
}
file_text_close(file)

return syll;
