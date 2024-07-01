package main

import (
	"fmt"
)

func main() {
	var n, y int
	fmt.Scan(&n, &y)

	for i := 0; i <= n; i++ {
		for j := 0; j <= n; j++ {
			if i+j > n {
				continue
			}
			if i*10000+j*5000+1000*(n-(i+j)) == y {
				fmt.Printf("%d %d %d\n", i, j, n-(i+j))
				return
			}
		}
	}
	fmt.Println("-1 -1 -1")
}
