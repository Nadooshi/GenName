/// @desc Saves syll data

sylldata_path = get_save_filename("*.txt", "syll.txt")
//show_message(sylldata_path)
var file = file_text_open_write(sylldata_path)
if file == -1 show_message("FAIL BLEAT")

var ss = ""

show_debug_message("... sorting array 1")
syll_common = sc_syll_sort(syll_common)
show_debug_message("... sorting array 2")
syll_common_reverse = sc_syll_sort(syll_common_reverse)
show_debug_message("... sorting array 3")
syll_triple = sc_syll_sort(syll_triple)
show_debug_message("... sorting array 4")
syll_triple_reverse = sc_syll_sort(syll_triple_reverse)

show_debug_message("... saving common syllables")
file_text_write_string(file, "------")
file_text_writeln(file)
file_text_write_string(file, "common")
file_text_writeln(file)
for (var i=0; i<array_height_2d(syll_common); i++) {
	ss = syll_common[i, 0] + " | " + string(syll_common[i,1])
	file_text_write_string(file, ss)
	file_text_writeln(file)
}

show_debug_message("... saving reverse syllables")
file_text_write_string(file, "------")
file_text_writeln(file)
file_text_write_string(file, "reverse")
file_text_writeln(file)
for (var i=0; i<array_height_2d(syll_common_reverse); i++) {
	ss = syll_common_reverse[i, 0] + " | " + string(syll_common_reverse[i,1])
	file_text_write_string(file, ss)
	file_text_writeln(file)
}

show_debug_message("... saving triple syllables")
file_text_write_string(file, "------")
file_text_writeln(file)
file_text_write_string(file, "triple")
file_text_writeln(file)
for (var i=0; i<array_height_2d(syll_triple); i++) {
	ss = syll_triple[i, 0] + " | " + string(syll_triple[i,1])
	file_text_write_string(file, ss)
	file_text_writeln(file)
}

show_debug_message("... saving triple reverse syllables")
file_text_write_string(file, "------")
file_text_writeln(file)
file_text_write_string(file, "triprev")
file_text_writeln(file)
for (var i=0; i<array_height_2d(syll_triple_reverse); i++) {
	ss = syll_triple_reverse[i, 0] + " | " + string(syll_triple_reverse[i,1])
	file_text_write_string(file, ss)
	file_text_writeln(file)
}
file_text_close(file)
