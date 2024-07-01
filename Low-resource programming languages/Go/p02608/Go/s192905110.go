package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		var cnt int
		for j := 1; j <= n; j++ {
			for k := 1; k <= n; k++ {
				for l := 1; l <= n; l++ {
					if j*j+k*k+l*l+j*k+k*l+l*j == i {
						cnt++
					}
				}
			}
		}
		println(cnt)
	}
}
