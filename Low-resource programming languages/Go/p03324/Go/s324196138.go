package main

import "fmt"

func pow(x, n int64) int64 {
	if n == 0 {
		return 1
	}
	for ; n > 0; n-- {
		x = x * x
	}
	return x
}

func main() {
	var D, N int64
	fmt.Scan(&D, &N)
	if N != 100 {
		fmt.Println(pow(10, D) * N)
	} else {
		fmt.Println(pow(10, D) * (N + 1))
	}
}
