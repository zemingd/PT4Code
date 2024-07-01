package main

import (
	"fmt"
)

func main() {
	var n, k, digits int
	fmt.Scan(&n, &k)

	for {
		if n < k {
			digits++
			break
		}
		n = n / k
		digits++
	}

	fmt.Println(digits)
}
