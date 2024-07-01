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
		if (a - 1) > (n - b) {
			fmt.Printf("%d\n", b-1)
		} else {
			fmt.Printf("%d\n", n-a)
		}
	}
}
