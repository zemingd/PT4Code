package main

import "fmt"

func main() {
	var N, A, B, C, D int
	fmt.Scan(&N, &A, &B, &C, &D)
	var S string
	fmt.Scan(&S)

	p1 := 0
	p2 := 0
	dotdotdot := false
	if C < D {
		for i := A - 1; i < D; i++ {
			if S[i] == '#' {
				if p1 == 1 {
					fmt.Println("No")
					return
				}
				p1 = 1
			} else {
				p1 = 0
			}
		}
	} else {
		for i := A - 1; i < C; i++ {
			if S[i] == '#' {
				if p1 == 1 {
					fmt.Println("No")
					return
				}
				p1 = 1
				p2 = 0
			} else {
				p1 = 0
				if i >= B && i <= D {
					p2++
					if p2 >= 3 {
						dotdotdot = true
					}
				}
			}
		}
		if !dotdotdot {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
