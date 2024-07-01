package main

import (
	"fmt"
)

func main() {
	var n, y int

	fmt.Scan(&n)
	fmt.Scan(&y)

	for i := 0; i <= n; i++ {
		for j := 0; j <= n; j++ {
			if i+j > n {
				break
			}
			k := n - (i + j)
			if y == 10000*i+5000*j+1000*k {
				fmt.Printf("%v %v %v\n", i, j, k)
				return
			}
		}
	}
	fmt.Println("-1 -1 -1")
}