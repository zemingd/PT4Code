package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	v := N & -N
	for N-v > 0 {
		N -= v
		v = N & -N
	}
	fmt.Println(N)
}
