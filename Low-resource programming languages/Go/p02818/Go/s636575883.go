package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scanf("%d %d %d", &a, &b, &k)

	if a >= k {
		a -= k
	} else {
		k -= a
		a = 0
		if b >= k {
			b -= k
		} else {
			b = 0
		}
	}

	fmt.Printf("%d %d\n", a, b)
}