/// @desc generate serial number
var syll_arr
var cap_word
var syll_type = irandom_range(0,3)

switch (syll_type) {
case 0: //common
	syll_arr = sc_generate_syll_common()
	cap_word = syll_common[syll_arr, 0]
	break;
case 1: // reverse common
	syll_arr = sc_gen_rev_syll_common()
	cap_word = syll_common_reverse[syll_arr, 0]
	break;
case 2: // triple
	syll_arr = sc_generate_syll_triple()
	cap_word = syll_triple[syll_arr, 0]
	break;
case 3: // reverse triple
	syll_arr = sc_gen_rev_syll_triple()
	cap_word = syll_triple_reverse[syll_arr, 0]
	break;
} 

cap_word += "-" + string(irandom_range(1,999))

return cap_word