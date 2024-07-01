package main
 
import (
	"fmt"
)
 
var N int64
var ANS int64
func main() {
	fmt.Scan(&N)
	for i := int64(1); i <= N; i++ {
		for j := int64(1); j <= N; j++ {
			g1 := gcd(i, j)
			for k := int64(1); k <= N; k++ {
				g2 := gcd(k, g1)
				ANS += g2
			}
		}
	}
	fmt.Println(ANS)
}

func gcd(a, b int64) int64 {
	if b > a {
		a, b = b, a
	}
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}
