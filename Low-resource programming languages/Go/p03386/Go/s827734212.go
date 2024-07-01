package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	max := a
	for i := a; i < a+k; i++ {
		if i <= b {
			fmt.Println(i)
			max = i
		}
	}

	for i := max + 1; i <= b; i++ {
		if i >= b-k+1 {
			fmt.Println(i)
		}
	}

}
