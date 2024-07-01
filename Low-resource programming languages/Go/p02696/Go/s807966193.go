package main

import (
	"fmt"
)

func main() {
	var a, b, n int
	fmt.Scanf("%d %d %d", &a, &b, &n)

	if n < (b - 1) {
		fmt.Println((a * n) - a*(n/b))
	} else {
		fmt.Println((a * (b - 1)) - a*(n/(b-1)))
	}

}
