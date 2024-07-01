package main

import "fmt"

func divisors(n int) []int {
	r := make([]int, 0)
	for i := 1; i*i <= n; i++ {
		if n%i == 0 {
			r = append(r, i)
			if i*i != n {
				r = append(r, n/i)
			}
		}
	}
	return r
}

func cols(n int) int {
	r := 0
	for n > 0 {
		r++
		n /= 10
	}
	return r
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var N int
	fmt.Scan(&N)
	divs := divisors(N)
	// fmt.Printf("divs(%d)=%v\n", N, divs)
	ans := int(1e10) + 1
	for i := 0; i < len(divs); i++ {
		p := divs[i]
		q := N / p
		// fmt.Printf("cols(%d)=%d, cols(%d)=%d\n", p, cols(p), q, cols(q))
		ans = min(ans, max(cols(p), cols(q)))
	}
	fmt.Println(ans)
}
