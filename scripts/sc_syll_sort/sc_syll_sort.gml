/// @desc Sort by rating
/// @arr Arr

var arr = argument0
var tsyl, tnum;

for (var i=0; i<array_height_2d(arr); i++)
for (var j=0; j<array_height_2d(arr)-1; j++)
if arr[j+1, 1]<arr[j, 1] {
	tsyl = arr[j ,0]
	tnum = arr[j, 1]
	arr[j, 0] = arr[j+1, 0]
	arr[j, 1] = arr[j+1, 1]
	arr[j+1, 0] = tsyl
	arr[j+1, 1] = tnum
	 
}

return arr
