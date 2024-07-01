package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	var A []int
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		A = append(A, a)
	}

	min := A[0]
	for {
		found := false
		for i := 0; i < N; i++ {
			for j := 0; j < N; j++ {
				if i != j {
					m := A[j] % A[i]
					if m != 0 {
						A[j] = m
						if m < min {
							min = m
							found = true
						}
					}
				}
			}
		}
		if !found {
			break
		}
	}
	fmt.Println(min)
}
