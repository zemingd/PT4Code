package main

import "fmt"

func divs(n int) []int {
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
	cnt := 0
	for n > 0 {
		cnt++
		n /= 10
	}
	return cnt
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var N, ans int
	fmt.Scan(&N)
	ds := divs(N)
	for _, v := range ds {
		ans = max(cols(v), cols(N/v))
	}
	fmt.Println(ans)
}
