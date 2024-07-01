package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if n < i+j {
				continue
			}

			if y == (10000*i + 5000*j + 1000*(n-(i+j))) {
				fmt.Printf("%d %d %d\n", i, j, n-(i+j))
			}
		}
	}
}
