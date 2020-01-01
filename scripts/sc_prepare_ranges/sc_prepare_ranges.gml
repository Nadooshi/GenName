/// @desc Prepare ranges for random


var q;

mx_common  = sc_syll_getmax(syll_common)
mx_reverse = sc_syll_getmax(syll_common_reverse)
mx_triple  = sc_syll_getmax(syll_triple)
mx_triprev = sc_syll_getmax(syll_triple_reverse)

//show_message(string(mx_common) +","+ string(mx_reverse) +","+ string(mx_triple) +","+ string(mx_triprev) )

/// Set syll_common ranges
range_common = 0
range_common[0] = mx_common*0.5
range_common[mx_common] = mx_common*0.01

q = power(range_common[mx_common]/range_common[0], 1/(mx_common+1))
//show_message(string(q))
for (var i=1; i<=mx_common; i++) {
	range_common[i] = range_common[i-1]*q
}
show_debug_message(string(range_common[0]))
for (var i=1; i<=mx_common; i++) {
	range_common[i] += range_common[i-1]
	show_debug_message(string(range_common[i]))
}

/// Set syll_reverse ranges
range_reverse = 0
range_reverse[0] = mx_reverse*0.5
range_reverse[mx_reverse] = mx_reverse*0.01

q = power(range_reverse[mx_reverse]/range_reverse[0], 1/(mx_reverse+1))
//show_message(string(q))
for (var i=1; i<=mx_reverse; i++) {
	range_reverse[i] = range_reverse[i-1]*q
}
show_debug_message(string(range_reverse[0]))
for (var i=1; i<=mx_reverse; i++) {
	range_reverse[i] += range_reverse[i-1]
	show_debug_message(string(range_reverse[i]))
}

/// Set syll_triple ranges
range_triple = 0
range_triple[0] = mx_triple*0.5
range_triple[mx_triple] = mx_triple*0.01

q = power(range_triple[mx_triple]/range_triple[0], 1/(mx_triple+1))
//show_message(string(q))
for (var i=1; i<=mx_triple; i++) {
	range_triple[i] = range_triple[i-1]*q
}
show_debug_message(string(range_triple[0]))
for (var i=1; i<=mx_triple; i++) {
	range_triple[i] += range_triple[i-1]
	show_debug_message(string(range_triple[i]))
}


/// Set syll_triprev ranges
range_triprev = 0
range_triprev[0] = mx_triprev*0.5
range_triprev[mx_triprev] = mx_triprev*0.01

q = power(range_triprev[mx_triprev]/range_triprev[0], 1/(mx_triprev+1))
//show_message(string(q))
for (var i=1; i<=mx_triprev; i++) {
	range_triprev[i] = range_triprev[i-1]*q
}
show_debug_message(string(range_triprev[0]))
for (var i=1; i<=mx_triprev; i++) {
	range_triprev[i] += range_triprev[i-1]
	show_debug_message(string(range_triprev[i]))
}

