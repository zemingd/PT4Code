package main

import (
	"fmt"
)

func main() {
	var N, A, B, res int64
	fmt.Scan(&N, &A, &B)

	remain := N % (A + B)
	set := (N - remain) / (A + B)

	if remain > A {
		res = A*set + A
	} else {
		res = A*set + remain
	}

	fmt.Println(res)
}
