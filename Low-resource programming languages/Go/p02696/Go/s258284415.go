package main

import "fmt"

func main() {
	var A, B, N int
	fmt.Scanf("%d %d %d", &A, &B, &N)

	var beta int
	if N/B == 0 {
		beta = N % B
	} else {
		beta = B - 1
	}
	fmt.Println(A * beta / B)
}
