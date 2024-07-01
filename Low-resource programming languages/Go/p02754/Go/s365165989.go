package main

import "fmt"

func main() {
	var (
		N int
		A int
		B int
	)

	fmt.Scan(&N, &A, &B)

	var ans int
	if A != 0 && B != 0 {
		syou := N / (A + B)
		amari := N % (A + B)
		ans = syou*A + amari
	} else {
		ans = 0
	}

	fmt.Println(ans)
}
