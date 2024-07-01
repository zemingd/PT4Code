package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	sum := 0

	for i := 1; i <= n; i++ {
		if i%3 == 0 {
		} else if i%5 == 0 {
		} else {
			sum += i
		}
	}
	fmt.Println(sum)
}