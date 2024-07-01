package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, n int64
	fmt.Scanf("%d %d %d", &a, &b, &n)
	ans := int64(0)
	for x := int64(0); x <= int64(math.Min(float64(n), math.Max(float64(a), float64(b)))); x++ {
		f := int64(math.Floor(float64(a*x)/float64(b))) - a*int64(math.Floor(float64(x)/float64(b)))
		if f > ans {
			ans = f
		} else if f < ans {
			break
		}
	}
	fmt.Println(ans)
}
