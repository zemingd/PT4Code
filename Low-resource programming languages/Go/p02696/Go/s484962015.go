package main

import (
	"fmt"
)

func main() {
	var A, B, N int
	fmt.Scan(&A, &B, &N)
	var max int
	if N < B {
		fmt.Println(A * N / B)
	} else {
		for x := N / 2; x <= N; x++ {
			if tmp := A*x/B - A*(x/B); max < tmp {
				max = tmp
			}
		}
		fmt.Println(max)
	}
}