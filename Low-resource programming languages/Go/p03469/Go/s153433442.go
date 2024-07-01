package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)

	for i := 0; i <= n; i++ {
		for j := 0; j <= n-i; j++ {
			for k := 0; k <= n-i-j; k++ {
				if y == (i*10000+j*5000+k*1000) || n == i+j+k {
					fmt.Println(i, j, k)
					return
				}
			}
		}
	}
	fmt.Println(-1, -1, -1)
}