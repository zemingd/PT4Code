package main

import "fmt"

func main() {
	// Code for B - Ringo's Favorite Numbers
	var D, N int
	fmt.Scanf("%d %d", &D, &N)

	if D == 0 {
		if N == 100 {
			fmt.Println(N + 1)
		} else {
			fmt.Println(N)
		}
	} else if D == 1 {
		fmt.Println(N * 100)
	} else {
		fmt.Println(N * 10000)
	}
}
