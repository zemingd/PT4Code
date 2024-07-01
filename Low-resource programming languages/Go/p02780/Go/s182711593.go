package main

import (
	"fmt"
)

func sumArray(arr []float64) float64 {
	total := 0.0
	for _, e := range arr {
		total += e
	}
	return total
}

func calcExpactation(n int) float64 {
	total := 0
	for i := 1; i <= n; i++ {
		total += i
	}
	return float64(total) / float64(n)
}

func main() {
	var n, k, p int
	fmt.Scan(&n, &k)

	epectations := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p)
		epectations[i] = calcExpactation(p)
	}

	max := 0.0
	for i := 0; i <= n-k; i++ {
		sum := sumArray(epectations[i : k+i])
		if max < sum {
			max = sum
		}
	}
	fmt.Println(max)
}
