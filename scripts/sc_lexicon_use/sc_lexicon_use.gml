/// @desc generate phrases
var composition = ""
var r

var variant_compos = irandom_range(0,3) // 0 = thing + attach, 1 = thing + decor + attach, 2 = grade + thing + attach, 3 = all 

for (var i = 0; i < 4; i++)
	r[i] = irandom_range(0, range_lexicon[i])

switch variant_compos {
	case 0: // thing + attach	
		composition = lexicon[1,r[1]] + " " + lexicon[3,r[3]]
		break;
	case 1: // thing + decor + attach	
		composition = lexicon[1,r[1]] + " "+ lexicon[2,r[2]] + " " + lexicon[3,r[3]]
		break;
	case 2: // grade + thing + attach	
		composition = lexicon[0,r[0]] + " " + lexicon[1,r[1]] + " " + lexicon[3,r[3]]
		break;
	default: // all	
		composition = lexicon[0,r[0]] + " " + lexicon[1,r[1]] + " "+ lexicon[2,r[2]] + " " + lexicon[3,r[3]]
		break;
}
return composition	