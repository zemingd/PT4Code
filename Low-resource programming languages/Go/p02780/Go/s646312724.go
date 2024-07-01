package main

import "fmt"

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	sum := make([]float64, n)
	var p float64
	for i := 0; i < n; i++ {
		fmt.Scan(&p)
		if i > 0 {
			sum[i] = sum[i-1] + (p+1)/2
		} else {
			sum[i] = (p + 1) / 2
		}
	}
	max := -1.0
	if k == n {
		max = sum[n-1]
		fmt.Println(max)
		return
	}
	for j := 0; j+k < n; j++ {
		if max < sum[j+k]-sum[j] {
			max = sum[j+k] - sum[j]
		}
	}
	fmt.Println(max)
	return
}
