package main

import "fmt"

func main() {
	// Code for D - ModSum
	var N int
	fmt.Scanf("%d", &N)
	if N == 2 {
		fmt.Println("1")
	} else {
		fmt.Println(N * (N / 2))
	}
}
