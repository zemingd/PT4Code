package main

import "fmt"

func main() {
	var n, k, max int
	fmt.Scan(&n, &k)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
		if p[i] > max {
			max = p[i]
		}
	}

	kitai := make([]float64, max+1)
	calc := 0
	for i := 1; i <= max; i++ {
		calc += i
		kitai[i] = float64(calc) / float64(i)
	}

	// search
	ans := 0.0
	for i := 0; i <= n-k; i++ {
		sum := 0.0
		for j := 0; j < k; j++ {
			sum += kitai[p[i+j]]
		}
		if ans < sum {
			ans = sum
		}
	}
	fmt.Printf("%.12f", ans)
}
