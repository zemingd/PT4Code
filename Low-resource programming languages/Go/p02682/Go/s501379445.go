package main

import (
	"fmt"
)

func main() {
	var a, b, c, k int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &k)
	fmt.Println(checker(a, b, c, k))
}

func checker(a int, b int, c int, k int) int {

	if k < a {
		a = k
	}
	max := a*1 + (k-a-b)*(-1)
	return max
}
