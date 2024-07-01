package main

import "fmt"

func main() {
	var (
		N int
		A int
		B int
	)

	fmt.Scan(&N, &A, &B)

	var ans int = 0
	if A != 0 {
		if N >= A+B {
			syou := N / (A + B)
			amari := N % (A + B)
			if amari >= A {
				ans = syou*A + A
			} else {
				ans = syou*A + amari
			}
		} else {
			if N >= A {
				ans = A
			} else {
				ans = N
			}
		}
	} else {
		ans = 0
	}

	fmt.Println(ans)
}
