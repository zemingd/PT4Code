package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	r := N % K
	r2 := K - r
	if r < r2 {
		fmt.Println(r)
	} else {
		fmt.Println(r2)
	}
}
