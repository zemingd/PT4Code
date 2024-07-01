package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	count := 0
	res := 0
	fmt.Scan(&n)
	cities := make([]int, n + 1)
	for i := 0; i < n + 1; i++ {
		fmt.Scan(&cities[i])
	}
	heros := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&heros[i])
	}
	for i := 0; i < n; i++ {
		if cities[i] < heros[i] + res {
			count += cities[i]
			res += heros[i] - int(math.Max(float64(cities[i] - res), 0.0))
		} else {
			count += heros[i] + res
			res = 0
		}
	}
	if cities[n] < res {
		count += cities[n]
	} else {
		count += res
	}
	fmt.Println(count)
}
