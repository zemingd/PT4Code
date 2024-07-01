package main

import "fmt"

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	sum := 0
	min := 1000
	for i := 0; i < N; i++ {
		v := L + i
		sum += v

		if min < 0 {
			min *= -1
		}
		if v < min {
			min = v
		}
	}

	fmt.Println(sum - min)
}
