package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var sum int
	for i := 1; i <= n; i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += i
		}
	}
	fmt.Println(sum)
}
