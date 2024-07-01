package main

import "fmt"

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	exp := make([]float64, n)
	sum := make([]float64, n)
	var p float64
	for i := 0; i < n; i++ {
		fmt.Scan(&p)
		exp[i] = (p + 1) / 2
		if i > 0 {
			sum[i] = sum[i-1] + exp[i]
		}
	}
	max := 0.0
	for j := 0; j+k < n; j++ {
		if max < sum[j+k]-sum[j] {
			max = sum[j+k] - sum[j]
		}
	}
	fmt.Println(max)
}
