package main

import (
	"fmt"
)

func main() {
	var (
		n, y int
	)
	res10000 := -1
	res5000 := -1
	res1000 := -1
	fmt.Scan(&n, &y)

	for i := 0; i <= n; i++ {
		for j := 0; i+j <= n; j++ {
			k := n - i - j
			total := 10000*i + 5000*j + 1000*k
			if total == y {
				res10000 = i
				res5000 = j
				res1000 = k
			}
		}
	}

	fmt.Printf("%d %d %d\n", res10000, res5000, res1000)
}
