package main

import "fmt"

func main() {
	var A, B, C int
	fmt.Scanf("%d %d %d", &A, &B, &C)
	if A == B && A != C {
		fmt.Println("Yes")
		return
	}
	if A == C && A != B {
		fmt.Println("Yes")
		return
	}
	if B == C && A != B {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
