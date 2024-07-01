package main

import (
	"fmt"
)

func main() {
	var A, B, T, r int
	fmt.Scan(&A, &B, &T)
	for i := 1; i <= T; i++ {
		if i%A == 0 {
			r += B
		}
	}
	fmt.Println(r)
}
