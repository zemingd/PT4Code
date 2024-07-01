package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	for n := 1; n <= N; n++ {
		res := 0

		for i := 1; i*i <= n; i++ {
			for j := 1; i*i+j*j+i*j <= n; j++ {
				for k := 1; i*i+j*j+k*k+i*j+i*k+k*j <= n; k++ {
					if i*i+j*j+k*k+i*j+i*k+k*j == n {
						res++
					}
				}
			}
		}
		fmt.Printf("%d\n", res)
	}
}
