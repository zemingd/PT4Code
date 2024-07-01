package main

import (
	"fmt"
	"math"
)

func main() {
	var n, x float64
	var t int
	fmt.Scanf("%f %f %d", &n, &x, &t)
	ans := int(math.Ceil(n / x))
	ans *= t
	fmt.Println(ans)
}
