package main

import "fmt"

// P is large prime number.
const P = 1000000000 + 7

func main() {
	var A, B, C int
	fmt.Scanf("%d %d %d", &A, &B, &C)

	a := A
	b := B
	if a > b {
		a, b = b, a
	}
	// a <= b
	c := abs((C - A - B) / 2)

	if a >= c {
		fmt.Println("No")
	} else if b < c {
		fmt.Println("Yes")
	} else if a*b < c*c {
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
