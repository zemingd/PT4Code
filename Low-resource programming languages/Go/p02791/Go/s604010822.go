package main

import "fmt"

var N int
var P []int

func main() {
	fmt.Scan(&N)
	num := 0
	if N == 0 {
		fmt.Println("0")
	}
	tmp := 0
	min := 0
	fmt.Scan(&min)
	for i := 1; i < N; i++ {
		fmt.Scan(&tmp)
		if tmp > min {
			num++
		}
		if min > tmp {
			min = tmp
		}
	}
	fmt.Println(N - num)
}
