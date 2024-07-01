package main

import (
	"fmt"
)

func main() {
	var a, b, n int
	fmt.Scanf("%d %d %d", &n, &a, &b)

	tmp := b - a
	if tmp%2 == 0 {
		fmt.Printf("%d\n", tmp/2)
	} else {
		if (b - 1) > (n - a) {
			fmt.Printf("%d\n", n-a)
		} else {
			fmt.Printf("%d\n", b-1)
		}
	}
}
