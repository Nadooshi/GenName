/// @desc Get random syll from syll_triple

var sl = "#"

var r = random_range(0, range_triple[mx_triple])
var ok = false
// get randomized rating
for (var i=0; i<mx_triple; i++) {
	if (r>=range_triple[i]) and (r<range_triple[i+1]) {
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
	for (i=0; i<array_height_2d(syll_triple); i++) {
		if syll_triple[i, 1] >  r break
		if syll_triple[i, 1] == r {
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
