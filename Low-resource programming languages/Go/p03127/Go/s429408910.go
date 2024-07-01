package main

import (
	"fmt"
)

func main() {
	var N, A, C int
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		fmt.Scan(&A)
		if i == 0 {
			C = A
		} else {
			if A > C {
				if A%C != 0 {
					C = A % C
				}
			} else {
				if C%A != 0 {
					C = C % A
				}
			}
		}
	}
	fmt.Println(C)
}
