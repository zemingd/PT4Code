package main

import "fmt"

func main() {
	// Code for A - Takoyaki
	var N, X, T int
	fmt.Scanf("%d %d %d", &N, &X, &T)

	var ans int
	if N%X == 0 {
		ans = T * (N / X)
	} else {
		ans = T * (N/X + 1)

	}
	fmt.Println(ans)
}
