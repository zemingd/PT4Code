package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := 0
	answer := 1
	for i := 1; i <= n; i++ {
		x := i
		count := 0
		for x%2 == 0 {
			x = x / 2
			count = count + 1
		}
		if count > m {
			m = count
			answer = i
		}
	}
	fmt.Println(answer)
}
