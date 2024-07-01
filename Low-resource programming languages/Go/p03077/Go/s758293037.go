package main

import "fmt"

func main() {
	var N, A, B int
	fmt.Scan(&N, &A)
	for i := 0; i < 4; i++ {
		fmt.Scan(&B)
		if B < A {
			A = B
		}
	}

	ans := N/A + 5
	if N%A == 0 {
		ans--
	}
	fmt.Println(ans)
}
