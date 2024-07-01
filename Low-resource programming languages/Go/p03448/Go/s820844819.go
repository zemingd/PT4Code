package main

import "fmt"

func main() {
	// Code for B - Coins
	var A, B, C, X int
	fmt.Scanf("%d\n%d\n%d\n%d", &A, &B, &C, &X)

	var answer int = 0
	for i := 0; i <= A; i++ {
		for j := 0; j <= B; j++ {
			for k := 0; k <= C; k++ {
				if X == 500*i+100*j+50*k {
					answer++
				}
			}
		}
	}

	fmt.Println(answer)
}
