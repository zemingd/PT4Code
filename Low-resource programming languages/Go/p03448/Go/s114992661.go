package main

import "fmt"

func main() {
	var A, B, C, X, r int
	fmt.Scan(&A, &B, &C, &X)
	for i := 0; i <= A; i++ {
		for j := 0; j <= B; j++ {
			for k := 0; k <= C; k++ {
				if 500*i+100*j+50*k == X {
					r++
				}
			}
		}
	}
	fmt.Println(r)
}