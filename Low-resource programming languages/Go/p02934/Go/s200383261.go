package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var sum float64
	for i := 0; i < n; i++ {
		var x int64
		fmt.Scanf("%d", &x)

		sum += 1 / float64(x)
	}

	sum = 1 / sum
	fmt.Println(sum)
}
