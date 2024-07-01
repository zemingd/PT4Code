package main

import "fmt"

func main() {
	// Code for C - Modulo Summation
	var N int
	fmt.Scanf("%d", &N)

	var a int
	var ans int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &a)
		ans += a
	}

	fmt.Println(ans - N)
}
