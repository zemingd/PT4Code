package main

import "fmt"

func main() {
	var r, g, b, k int
	fmt.Scan(&r, &g, &b, &k)
	red := r
	green := g
	blue := b
	n := 3

	for i := 1; i < k; i++ {
		n = n * 3
	}

	for i := 0; i < k; i++ {
		if green >= blue {
			blue *= 2
		} else if red >= green {
			green *= 2
		}
		if red < green && green < blue {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
