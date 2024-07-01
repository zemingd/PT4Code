package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := 0
	for i := 1; i <= n; i += 2 {
		if totalDivisors(i) == 8 {
			ans++
		}

	}
	fmt.Println(ans)
}

func totalDivisors(n int) int {
	total := 0
	for i := 1; i <= n; i++ {
		if n%i == 0 {
			total++
		}
	}
	return total
}
