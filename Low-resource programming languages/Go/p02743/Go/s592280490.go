package main

import "fmt"

// P is large prime number.
const P = 1000000000 + 7

func main() {
	var A, B, C int
	fmt.Scanf("%d %d %d", &A, &B, &C)

	a := 2 * A
	b := 2 * B
	if a > b {
		a, b = b, a
	}
	c := abs(C - A - B)
	a0, a1 := a/P, a%P
	b0, b1 := b/P, b%P
	c0, c1 := c/P, c%P

	n0, n1, n2 := a0*b0, a1*b0+a0*b1, a1*b1
	m0, m1, m2 := c0*c0, 2*c0*c1, c1*c1
	if n0 < m0 {
		fmt.Println("Yes")
		return
	} else if n0 == m0 {
		if n1 < m1 {
			fmt.Println("Yes")
			return
		} else if n1 == m1 {
			if n2 < m2 {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}
