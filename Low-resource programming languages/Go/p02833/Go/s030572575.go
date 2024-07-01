package main

import (
	"fmt"
	"math"
)

func main() {
	var n int64
	fmt.Scanf("%d", &n)
	if n%2 == 1 {
		fmt.Printf("0\n")
		return
	}

	for n%10 != 0 {
		n -= 2
	}

	ans := 0
	for i := n; i > 0; i -= 5 {
		ans += int(math.Log10(float64(i)))
	}
	fmt.Printf("%d\n", ans)
}
