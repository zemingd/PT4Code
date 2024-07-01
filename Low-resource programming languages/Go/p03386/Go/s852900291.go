package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	for i := a; i <= b && i < a+k; i++ {
		fmt.Println(i)
	}
	for i := b - k + 1; i <= b; i++ {
		if a+k <= i {
			fmt.Println(i)
		}
	}
}
