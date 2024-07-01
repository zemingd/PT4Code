package main

import (
	"fmt"
)

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

func main() {
	var N, ans int
	fmt.Scan(&N)
	for i := 1; i <= N; i += 2 {
		d := 0
		for j := 1; j <= N; j += 2 {
			if i%j == 0 {
				d++
			}
		}
		if d == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}
