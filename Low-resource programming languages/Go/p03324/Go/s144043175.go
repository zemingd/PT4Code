package main

import "fmt"

func main() {
	// Code for B - Ringo's Favorite Numbers
	var D, N int
	fmt.Scanf("%d %d", &D, &N)

	var number int = 0
	if N == 100 {
		number++
	}
	if D == 0 {
		fmt.Println(N + number)
	} else if D == 1 {

		fmt.Println((N + number) * 100)
	} else {
		fmt.Println((N + number) * 10000)
	}
}
