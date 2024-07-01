package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	P := make([]int, N)
	for i := range P {
		fmt.Scan(&P[i])
	}
	min := P[0]
	res := 0
	for i := range P {
		if min >= P[i] {
			res++
		}
		if min > P[i] {
			min = P[i]
		}
	}
	fmt.Println(res)
}
