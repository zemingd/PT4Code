package main

import "fmt"

func main() {
	var A, B, C uint
	fmt.Scanf("%d %d %d", &A, &B, &C)

	if A == B {
		if A != C {
			fmt.Println("Yes")
			return
		}
	}
	if B == C {
		if B != A {
			fmt.Println("Yes")
			return
		}
	}
	if C == A {
		if C != B {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
