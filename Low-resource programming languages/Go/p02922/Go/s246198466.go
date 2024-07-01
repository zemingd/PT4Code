package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	ans := exec(A, B)
	fmt.Println(ans)
}

func exec(A, B int) int {
	if A == B {
		return 1
	}

	return B/A + 1
}
