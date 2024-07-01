package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scanf("%d %d %d", &a, &b, &k)
	if a <= k {
		k -= a
		a = 0

		if b <= k {
			k -= b
			b = 0
		} else {
			b -= k
		}
	} else {
		a -= k
	}

  fmt.Printf("%d %d", a, b)
}