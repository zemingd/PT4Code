package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)

	fmt.Println(answer(n, k))
}

func answer(n int, k int) int {
	var rest = n % k

	if k - rest < rest {
		return k - rest
	}
	return rest
}
