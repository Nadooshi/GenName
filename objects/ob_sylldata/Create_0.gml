/// @desc Init sylls

globalvar generation_mode
globalvar syll_vowel
globalvar syll_cons 
globalvar syll_common 
globalvar syll_common_reverse
globalvar syll_triple
globalvar syll_triple_reverse
globalvar sylldata_path
globalvar lexicon_path
globalvar lexicon

globalvar mx_common
globalvar mx_reverse
globalvar mx_triple
globalvar mx_triprev
globalvar range_common
globalvar range_reverse
globalvar range_triple
globalvar range_triprev
globalvar range_lexicon

var;
randomize()
generation_mode = 0
sylldata_path = ""
lexicon_path = ""
lexicon = noone

for (var i = 0; i < 4; i++)
	range_lexicon[i] = 0



