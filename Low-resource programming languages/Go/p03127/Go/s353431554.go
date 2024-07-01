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
				for {
					if A%C != 0 && A%C < C {
						D := C
						C = A % C
						A = D
					} else {
						break
					}
				}
			} else {
				for {
					if C%A != 0 && C%A < A {
						D := A
						C = C % A
						A = D
					} else {
						break
					}
				}
			}
		}
	}
	fmt.Println(C)
}
