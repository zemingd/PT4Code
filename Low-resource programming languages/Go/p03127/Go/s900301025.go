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
			for {
				if A > C {
					if A%C != 0 && A%C < C {
						D := C
						C = A % C
						A = D
					} else {
						break
					}
				} else {
					if C%A != 0 && C%A < A {
						D := A
						A = C % A
						C = D
					} else {
						C = A
						break
					}
				}
			}
		}
	}
	fmt.Println(C)
}
