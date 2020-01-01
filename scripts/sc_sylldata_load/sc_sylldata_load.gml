/// @desc Load syll data

sylldata_path = get_open_filename("*.txt","syll.txt")

if not file_exists(sylldata_path) exit

var file = file_text_open_read(sylldata_path)
var ss,s1,s2,n;
var arrIn;

enum arr_index {
	common,
	reverse,
	triple,
	triprev
}

n = 0
while not file_text_eof(file) {
	ss = file_text_readln(file)
	if string_pos("------", ss) > 0 {
		ss = file_text_readln(file)
		if string_pos("common", ss) > 0
			arrIn = arr_index.common
		else
		if string_pos("reverse", ss) > 0
			arrIn = arr_index.reverse
		else
		if string_pos("triple", ss) > 0
			arrIn = arr_index.triple
		else
		if string_pos("triprev", ss) > 0
			arrIn = arr_index.triprev
		n = 0
		continue
	}
	if string_pos(" | ", ss) > 0 {
		s1 = string_copy(ss, 1, string_pos(" | ", ss)-1)
		s2 = real( string_digits(ss) )
		switch arrIn {
			case arr_index.common:
				syll_common[n, 0] = s1
				syll_common[n, 1] = s2
				break
			case arr_index.reverse:
				syll_common_reverse[n, 0] = s1
				syll_common_reverse[n, 1] = s2
				break
			case arr_index.triple:
				syll_triple[n, 0] = s1
				syll_triple[n, 1] = s2
				break
			case arr_index.triprev:
				syll_triple_reverse[n, 0] = s1
				syll_triple_reverse[n, 1] = s2
				break
		}
		n++
	}	
}

file_text_close(file)

sc_prepare_ranges()

