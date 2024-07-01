package main

import (
	"fmt"
	"math"
)

func main() {
	var n, a, b int64
	fmt.Scanf("%d %d %d", &n, &a, &b)

	ans := int64(0)
	if a == 0 {
		ans = 0
	} else if b == 0 || a >= n {
		ans = n
	} else {
		ans = a*n/(a+b) + int64(math.Min(float64(n%(a+b)), float64(a)))
	}

	fmt.Println(ans)
}
