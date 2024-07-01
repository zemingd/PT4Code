package main

import (
	"fmt"
)

func main() {

	var N, R int
	fmt.Scanf("%d %d\n", &N, &R)

	var r int = 1
	for N / R > 0 {
		r ++
		N = N / R
	}
	fmt.Println(r)
}