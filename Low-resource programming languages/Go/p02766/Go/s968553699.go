package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	d := 0
	for N > 0 {
		d++
		N /= K
	}
	fmt.Println(d)
}
