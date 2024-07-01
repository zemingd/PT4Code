package main

import "fmt"

var N, K int64

func main() {
	fmt.Scan(&N, &K)
	var a, b int64
	var sum int64 = 0
	for i := 0; i < N; i++ {
		fmt.Scan(&a, &b)
		sum += b
		if sum >= K {
			fmt.Println(a)
			break
		}
	}
}
