package main

import "fmt"

var N, K int

func main() {
	fmt.Scan(&N, &K)
	var a, b int
	sum := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&a, &b)
		sum += b
		if sum >= K {
			fmt.Println(a)
			break
		}
	}
}
