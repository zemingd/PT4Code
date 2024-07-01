package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		var cnt int
		for j := 1; j <= i; j++ {
			if j*j >= i {
				continue
			}
			for k := 1; k <= i; k++ {
				if j*j+k*k+j*k >= i {
					continue
				}
				for l := 1; l <= i; l++ {
					if j*j+k*k+l*l+j*k+k*l+l*j == i {
						cnt++
					}
				}
			}
		}
		fmt.Println(cnt)
	}
}
