package main

import "fmt"

func main() {
	var N, v int
	fmt.Scan(&N)
	for N > 0 {
		v = N & -N
		N -= v
	}
	fmt.Println(v)
}
