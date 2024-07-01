package main

import (
	"fmt"
)

func main() {
	var a, b, k, min, max int
	fmt.Scanf("%d %d %d", &a, &b, &k)
	min = a + k
	max = b - k
	for i := a; i <= b; i++ {
		if i < min || max < i {
			fmt.Println(i)
		}
	}
}
