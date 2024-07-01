package main

import "fmt"

func main() {
	var n, money int
	fmt.Scan(&n, &money)

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			for k := 0; k < n; k++ {
				if i+j+k == n && 10000*i+5000*j+1000*k == money {
					fmt.Println(i, j, k)
					return
				}
			}
		}
	}
	fmt.Println(-1, -1, -1)
}
