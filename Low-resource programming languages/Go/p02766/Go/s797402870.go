package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	d := 0
	for n > 0 {
		n /= k
		d++
	}
	fmt.Printf("%d\n", d)
}
