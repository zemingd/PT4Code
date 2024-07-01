package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)

	for i := 0; i <= n; i++ {
		for j := 0; j <= (n - i); j++ {
			k := n - (i + j)
			total := 10000*i + 5000*j + 1000*k
			if total == y {
				fmt.Println(i, j, k)
				return
			}
		}
	}
	fmt.Println(-1, -1, -1)
}
