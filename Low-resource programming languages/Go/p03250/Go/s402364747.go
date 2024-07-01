package main

import (
	"fmt"
)

func main() {
	var A, B, C int
	fmt.Scanf("%d%d%d", &A, &B, &C)
	max := 0
	o1 := 0
	o2 := 0
	if max < A {
		max = A
		o1 = B
		o2 = C
	}
	if max < B {
		max = B
		o1 = C
		o2 = A
	}
	if max < C {
		max = C
		o1 = A
		o2 = B
	}
	fmt.Printf("%d\n", max*10+o1+o2)
	return
}
