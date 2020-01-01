/// @desc Get random syll from syll_common

var sl = "#"

var r = random_range(0, range_triprev[mx_triprev])
var ok = false
// get randomized rating
for (var i=0; i<mx_triprev; i++) {
	if r<range_triprev[0] {
		r = i
		ok = true
		break
	}
	if r>=range_triprev[mx_triprev] {
		r = i
		ok = true
		break
	}

	if (r>=range_triprev[i]) and (r<range_triprev[i+1]) {
		r = i
		ok = true
		break
	}
} 

// get syll by rating
var n = 0
var resultSyll;

if ok {
	ok=false
	for (i=0; i<array_height_2d(syll_triple_reverse); i++) {
		if syll_triple_reverse[i, 1] >  r break
		if syll_triple_reverse[i, 1] == r {
			resultSyll[n] = i
			ok = true
			n++
		}
	}
}

if ok {
	sl = resultSyll[ irandom_range(0, n-1) ]
}

return sl
