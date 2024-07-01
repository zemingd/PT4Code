package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)
	found := false
L:
	for i := 0; i <= n; i++ {
		for j := 0; j <= n-i; j++ {
			if 1000*i+5000*j+10000*(n-i-j) == y {
				fmt.Printf("%d %d %d\n", i, j, n-i-j)
				found = true
				break L
			}
		}
	}
	if !found {
		fmt.Printf("%d %d %d\n", -1, -1, -1)
	}
}
