package main
import (
	"fmt"
	"math"
)
func main(){ abc126c() }
func abc126c() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	var p float64

	max := int(math.Ceil(math.Log2(float64(k))))
	for i := 1; i <= n; i++ {
		p += math.Pow(0.5, float64(abc126cSub(max, i, k)))
	}
	fmt.Printf("%f", p/float64(n))
}
func abc126cSub(max int, i int, k int) int {
	if i >= k {
		return 0
	}

	// need to throw a coin and win c times
	c := int(math.Ceil(math.Log2(float64(k) / float64(i))))
	return c
}