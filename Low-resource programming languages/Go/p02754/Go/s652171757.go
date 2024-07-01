package main

import "fmt"

func main() {
	var (
		N int
		A int
		B int
	)

	fmt.Scan(&N, &A, &B)

	syou := N / (A + B)
	amari := N % (A + B)

	ans := syou*A + amari

	fmt.Println(ans)
}