package main

import (
	"fmt"
	"math"
)

func main() {
	var n, a, b int64
	fmt.Scan(&n, &a, &b)

	set := n / (a + b)
	mod := n % (a + b)
	ans := set * a
	ans += int(math.Min(float64(mod), float64(a)))
	fmt.Println(ans)
}
