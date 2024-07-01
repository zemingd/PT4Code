package main 

import (
	"fmt"
	"unicode/utf8"
	"strconv"
	"math"
)

func main () {
	var s string
	var x, y, z, an, zx  int
	fmt.Scan(&s)
	na :=utf8.RuneCountInString(s)
	var ff float64

	for x = 0 ; x < 1000 ; x ++{
		y = x + 1
		z = y +1
		zx = z + 1
		if z < na  {
			k := s[x:y]
			ka :=s[y:z]
			ki := s[z:zx]
			d := k + ka + ki
			i, _ := strconv.Atoi(d)
			i = 753 - i
			ff = float64(i) 
			ff = math.Abs(ff)
			i = int(ff)

			if an == 0 {
				an = i
			}  else if an > i {
				an = i
			}
		}  else if z >= na {
			break 
		}
	}
	fmt.Println(an)
}