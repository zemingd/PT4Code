package main

import "fmt"

var A, B, N int

func main() {
	fmt.Scan(&A, &B, &N)
	max := 0
	for x := 1; x <= N; x++ {
		a := (A*x)/B - A*(x/B)
		if a > max {
			max = a
		}
	}
	fmt.Println(max)
}
