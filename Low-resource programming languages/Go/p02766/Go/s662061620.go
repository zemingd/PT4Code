package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	count := 0
	for n != 0 {
		n = n / k
		count++
	}
	fmt.Println(count)
}
