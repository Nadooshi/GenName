/// @desc Init syll data

syll_vowel  = sc_load_syll("vowel.txt")
syll_cons   = sc_load_syll("conson.txt")
syll_common = sc_make_syll_common()
syll_common_reverse = sc_make_syll_comrev()
syll_triple = sc_make_triple()
syll_triple_reverse = sc_make_triprev()

show_debug_message("... sorting array 1")
syll_common = sc_syll_sort(syll_common)
show_debug_message("... sorting array 2")
syll_common_reverse = sc_syll_sort(syll_common_reverse)
show_debug_message("... sorting array 3")
syll_triple = sc_syll_sort(syll_triple)
show_debug_message("... sorting array 4")
syll_triple_reverse = sc_syll_sort(syll_triple_reverse)
	
sc_prepare_ranges()
