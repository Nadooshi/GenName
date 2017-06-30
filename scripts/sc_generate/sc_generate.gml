/// @desc Return a new word

var syll_arr
var cap_word = ""
var len_word = 5 //irandom(3)+1
for (var i=0; i<len_word; i++) {
	var syll_type = 0 // irandom_range(0,1)
	switch (syll_type) {
	case 0: 
		syll_arr[i] = sc_generate_syll_common()
		cap_word += syll_common[syll_arr[i], 0]
		show_message(cap_word)
		break;
	case 1:
		break;
	} 
}

return cap_word

