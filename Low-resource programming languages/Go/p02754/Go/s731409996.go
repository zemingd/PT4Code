package main

import "fmt"

func main() {
	var(
		N,A,B int
	)
	fmt.Scan(&N, &A, &B)
	q := N / (A + B)
	r := N % (A + B)
	var lasta int
	if r < A {
		lasta = r
	} else {
		lasta = A
	}
	fmt.Println(q*A + lasta)
}
