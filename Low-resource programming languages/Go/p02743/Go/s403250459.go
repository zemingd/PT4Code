package main

import "fmt"

func main() {
	var A, B, C int
	fmt.Scanf("%d %d %d", &A, &B, &C)

	a := 2 * A
	b := 2 * B
	if a > b {
		a, b = b, a
	}
	// a <= b

	c := abs(C - A - B)
	if a*b < c*c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}
