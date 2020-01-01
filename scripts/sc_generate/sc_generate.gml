/// @desc Return a new word

var syll_arr
var cap_word = ""
var len_word = irandom(3)+1
for (var i=0; i<len_word; i++) {
	var syll_type = irandom_range(0,3)
	switch (syll_type) {
	case 0: //common
		syll_arr[i] = sc_generate_syll_common()
		cap_word += syll_common[syll_arr[i], 0]
		show_debug_message(cap_word)
		break;
	case 1: // reverse common
		syll_arr[i] = sc_gen_rev_syll_common()
		cap_word += syll_common_reverse[syll_arr[i], 0]
		show_debug_message(cap_word)
		break;
	case 2: // triple
		syll_arr[i] = sc_generate_syll_triple()
		cap_word += syll_triple[syll_arr[i], 0]
		show_debug_message(cap_word)
		break;
	case 3: // reverse triple
		syll_arr[i] = sc_gen_rev_syll_triple()
		cap_word += syll_triple_reverse[syll_arr[i], 0]
		show_debug_message(cap_word)
		break;
	} 
}

return cap_word

