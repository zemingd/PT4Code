package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	if n == 0 || k == 1 {
		fmt.Println(0)
		return
	}

	for {
		a := n / k
		if a == 0 {
			ab := abs(n - k)
			if n > ab {
				fmt.Println(ab)
				return
			}
			fmt.Println(n)
			return
		}
		n = n % k
	}
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}