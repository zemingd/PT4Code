package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	if A-K >= 0 {
		fmt.Printf("%d %d", A-K, B)
	} else {
		n := K - A
		if n <= B {
			fmt.Printf("%d %d", 0, B-n)
		} else {
			fmt.Printf("%d %d", 0, 0)
		}
	}

}
