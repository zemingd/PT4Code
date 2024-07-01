package main;

import (
	"fmt"
)

func Max(x, y int64) int64 {
	if (x > y) {
		return x
	}
	return y
}

func main() {
	var A, B int64
	fmt.Scan(&A)
	fmt.Scan(&B)
	fmt.Println(Max(A + B, Max(A - B, A * B)))
}
