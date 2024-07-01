package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	for i := a; i <= b; i++ {
		if (i < a+k) || (i > b-k) {
			fmt.Println(i)
		}
	}
}
