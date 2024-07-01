package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)

	a := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	fmt.Println(logic(a))
}

func logic(a []int) int {
	sum := 0
	for i, num := range a {
		if i == len(a)-1 {
			return sum
		}

		for j := i + 1; j < len(a); j++ {
			sum += num * a[j]
		}
	}
	return sum
}
