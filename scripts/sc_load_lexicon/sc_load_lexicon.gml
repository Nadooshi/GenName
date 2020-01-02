/// @decr load word set
lexicon_path = get_open_filename("*.lxcn","lexicon.lxcn")

if not file_exists(lexicon_path) exit
generation_mode = 1
var file = file_text_open_read(lexicon_path)

var str, n
var arrIn

enum arr_ind {
	wrd_grade,
	wrd_thing,
	wrd_decor,
	wrd_attach
}

while not file_text_eof(file){
	str = file_text_readln(file)
	if string_pos("------", str) > 0 {
		str = file_text_readln(file)
		if string_pos("grade",str) > 0
			arrIn = arr_ind.wrd_grade
		else
		if string_pos("thing",str) > 0
			arrIn = arr_ind.wrd_thing
		else
		if string_pos("decoration",str) > 0
			arrIn = arr_ind.wrd_decor
		else
		if string_pos("attachment",str) > 0
			arrIn = arr_ind.wrd_attach
		n = 0
		continue
	}
	//str = file_text_readln(file)
	switch str {
		case "\r":
		case "------":
		case "grade":
		case "thing":
		case "decoration":
		case "attachment":
			continue;
		default:
			lexicon[arrIn , n] = string_copy(str,1,(string_pos("\r", str)-1))
			n++
	}
}
file_text_close(file)

for (var i=0; i < 4; i++)
	range_lexicon[i] = array_length_2d(lexicon, i)-1
