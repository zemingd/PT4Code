package main

import "fmt"

func main() {
	var n, y int

	fmt.Scan(&n)
	fmt.Scan(&y)

	for i := 0; i < n+1; i++ {
		for j := 0; j <= n-i; j++ {
			k := n - i - j
			if y == 10000*i + 5000*j + 1000*k {
				fmt.Printf("%d %d %d\n", i, j, k)
				return
			}
		}
	}

	fmt.Printf("%d %d %d\n", -1, -1, -1)
}
