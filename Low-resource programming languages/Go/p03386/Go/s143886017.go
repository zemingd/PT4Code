package main

import "fmt"

var A, B, K int

func main() {
	fmt.Scanf("%d %d %d", &A, &B, &K)

	for i := A; i <= B; i++ {
		if A+K >= i || A-K <= i {
			fmt.Println(i)
		}
	}
}
