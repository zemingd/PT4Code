package main

import (
	"fmt"
)

func main() {
	var n, r int
	fmt.Scanf("%d %d", &n, &r)
	if n < 10 {
		r += 100 * (10 - n)
	}
	fmt.Println(r)
}
