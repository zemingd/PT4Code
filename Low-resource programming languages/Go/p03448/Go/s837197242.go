package main

import "fmt"

func mainABC087B() {
	var A, B, C, X int
	fmt.Scan(&A)
	fmt.Scan(&B)
	fmt.Scan(&C)
	fmt.Scan(&X)

	var cnt int
	for a := 0; a <= A; a++ {
		for b := 0; b <= B; b++ {
			for c := 0; c <= C; c++ {
				if X == 500*a+100*b+50*c {
					cnt++
				}
			}
		}
	}
	fmt.Print(cnt)
}
