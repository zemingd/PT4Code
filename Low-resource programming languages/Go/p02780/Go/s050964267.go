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

func main() {
	var n, k, p int
	fmt.Scan(&n, &k)

	epectationMap := make(map[int]float64, 1000)
	total := 0
	for i := 1; i <= 1000; i++ {
		total += i
		epectationMap[i] = float64(total) / float64(i)
	}

	epectations := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p)
		epectations[i] = epectationMap[p]
	}

	sum := 0.0
	for i := 0; i < k; i++ {
		sum += epectations[i]
	}

	max := sum
	for i := 1; i <= n-k; i++ {
		sum -= epectations[i-1]
		sum += epectations[i + k - 1]
		if max < sum {
			max = sum
		}
	}
	fmt.Println(max)
}
