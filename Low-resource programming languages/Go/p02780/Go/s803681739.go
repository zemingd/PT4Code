package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	p := make([]float64, n)
	for i := range p {
		fmt.Scan(&p[i])
	}

	idx := make([]float64, 0, k)
	maxIdx := make([]float64, k)
	var max, sum float64
	for i := 0; i < n; i++ {
		sum += p[i]
		idx = append(idx, p[i])
		if len(idx) > k {
			sum -= idx[0]
			idx = idx[1:]
		}
		if len(idx) == k {
			if max < sum {
				max = sum
				copy(maxIdx, idx)
			}
		}
	}

	sum = 0.0
	for _, v := range maxIdx {
		sum += expectation(v)
	}
	fmt.Printf("%.12f\n", sum)
}

func expectation(p float64) float64 {
	var sum float64
	for i := 1.0; i <= p; i++ {
		sum += i
	}
	return sum / p
}
