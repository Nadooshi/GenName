/// @desc Get random syll from syll_common

var sl = "#"

var r = random_range(0, range_common[mx_common])
var ok = false
// get randomized rating
for (var i=0; i<mx_common; i++) {
	if (r>=range_common[i]) and (r<range_common[i+1]) {
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
	for (i=0; i<array_height_2d(syll_common); i++) {
		if syll_common[i, 1] >  r break
		if syll_common[i, 1] == r {
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
