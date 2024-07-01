package main
 
import (
	"fmt"
)
 
func main() {
	var a, b, c, d int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
		
	var ac, ad, bc, bd int 

	ac = a * c
	ad = a * d
	bc = b * c
	bd = b * d

	var ans int 
	if ac < ad{
		ans = ad
	} else {
		ans = ac
	}

	if ans < bc{
		ans = bc
	} 

	if ans < bd{
		ans = bd
	}

	fmt.Printf("%d\n", ans)
}
