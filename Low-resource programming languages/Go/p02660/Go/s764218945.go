package main

import "fmt"

func primeFactorization(x int) map[int]int {
	ret := make(map[int]int)
	for i := 2; i*i <= x; i++ {
		for x%i == 0 {
			x /= i
			ret[i] += 1
		}
	}
	if x > 1 {
		ret[x] += 1
	}
	return ret
}

func main() {
	var N int
	fmt.Scan(&N)
	p_counts := primeFactorization(N)

	A := make([]int, 15)
	A[0] = 0
	for i := 1; i < 15; i++ {
		A[i] = A[i-1] + i
	}

	s := 0
	for _, c := range p_counts {
		for i := 1; i < 15; i++ {
			if c < A[i] {
				s += i - 1
				break
			}
		}
	}
	fmt.Println(s)
}
