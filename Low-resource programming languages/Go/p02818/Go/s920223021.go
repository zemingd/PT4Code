package main

import "fmt"

func main() {
	var A,B,K int
	fmt.Scan(&A,&B,&K)

	var a,b int
	if K <= A {
		a = A-K
		b = B
	} else {
		a = 0
		if K-A >= B {
			b = 0
		} else {
			b = B-(K-A)
		}
	}
}