package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	aFloat := make([]float64, N)
	for i, v := range a {
		aFloat[i] = float64(v+1) / float64(2)
	}

	var maxValue float64
	for left := 0; left < N; left++ {
		var sum float64
		for right := left; right < N; right++ {
			sum += aFloat[right]
			if right-left+1 >= K {
				if maxValue < sum {
					maxValue = sum
				}
				break
			}
		}
	}
	fmt.Println(maxValue)
}
