package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)

	for i := 0; i <= n; i++ {
		for j := 0; i+j <= n; j++ {
			k := n - i - j
			if i*10000+j*5000+k*1000 == y && i+j+k == n {
				fmt.Printf("%d %d %d", i, j, k)
				return
			}
		}
	}
	fmt.Println("-1 -1 -1")
}
