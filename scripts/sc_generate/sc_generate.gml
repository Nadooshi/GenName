/// @desc Return a new word

var syll_arr
var cap_word = ""
var len_word = irandom(2)+1
for (var i=0; i<len_word; i++) {
	var syll_type = irandom_range(0,5)
	switch (syll_type) {
	case 0: 
		syll_arr[i] = sc_generate_syll_common()
		cap_word += syll_common[syll_arr[i], 0]
		break;
	case 1:
		syll_arr[i] = sc_generate_syll_reverse()
		cap_word += syll_common_reverse[syll_arr[i], 0]
		break;
	case 2:
		syll_arr[i] = sc_generate_syll_triple()
		cap_word += syll_triple[syll_arr[i], 0]
		break;
	case 3:
		syll_arr[i] = sc_generate_syll_triple_reverse()
		cap_word += syll_triple_reverse[syll_arr[i], 0]
		break;
	case 4:
		syll_arr[i] = irandom_range(0,array_height_2d(syll_vowel)-1)
		cap_word += syll_vowel[syll_arr[i], 0]
		break;		
	case 5:
		syll_arr[i] = irandom_range(0,array_height_2d(syll_cons)-1)
		cap_word += syll_cons[syll_arr[i], 0]
		break;		
	} 
}

return cap_word

