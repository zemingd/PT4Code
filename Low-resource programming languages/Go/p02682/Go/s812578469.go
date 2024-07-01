package main

import (
	"fmt"
)

func main() {
	var a, b, c, k int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &k)
	if k <= a+b {
		fmt.Printf("%d\n", a)
	} else {
		fmt.Printf("%d\n", a-(k-a-b))
	}
}
