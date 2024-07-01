package main

import "fmt"

func main() {
	var D, N int
	fmt.Scan(&D, &N)
	b := 1
	for i := 0; i < D; i++ {
		b *= 100
	}
	if N == 100 {
		fmt.Println(101 * b)
	} else {
		fmt.Println(N * b)
	}
}
