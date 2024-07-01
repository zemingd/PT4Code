package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	countMax := 0
	answer := 1
	for i := 1; i <= n; i++ {
		x := i
		count := 0
		for x%2 == 0 {
			x /= 2
			count++
		}
		if count > countMax {
			countMax = count
			answer = i
		}
	}
	fmt.Println(answer)
}
