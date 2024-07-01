package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	L := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		fmt.Scan(&L[i])
	}
	bounds := 1
	var di, di1 int
	di1 = 0
	for i := 2; i <= n+1; i++ {
		di = di1 + L[i-1]
		if di <= x {
			bounds++
		}
		di1 = di
	}
	fmt.Println(bounds)
}
