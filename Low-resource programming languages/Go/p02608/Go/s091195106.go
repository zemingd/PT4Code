package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	nmax := 10000
	cs := make([]int, nmax+1)
	imax := 98
	for i := 1; i < imax; i++ {
		for j := 1; j < imax; j++ {
			for k := 1; k < imax; k++ {
				res := i*i + j*j + k*k + i*j + j*k + k*i
				if res <= nmax {
					cs[res]++
				}
			}
		}
	}
	for i := 1; i <= N; i++ {
		fmt.Println(cs[i])
	}

}
