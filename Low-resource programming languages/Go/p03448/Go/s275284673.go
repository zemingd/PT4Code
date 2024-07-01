package main

import "fmt"

func main() {
	var A, B, C, X, cnt int
	fmt.Scan(&A, &B, &C, &X)

	for a := range make([]int, A+1) {
		for b := range make([]int, B+1) {
			for c := range make([]int, C+1) {
				if 500*a+100*b+50*c == X {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}
