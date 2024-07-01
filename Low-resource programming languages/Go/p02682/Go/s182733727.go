package main

import (
	"fmt"
)

func main() {
	a, b, c, k := 0, 0, 0, 0
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &k)

	if k < a {
		fmt.Println(k)
	} else if k < a+b {
		fmt.Println(a)
	} else {
		fmt.Println(a - (k - a - b))
	}
}
