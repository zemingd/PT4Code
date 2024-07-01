package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)

	l := make([]int, N)
	r := make([]int, N)
	lc, rc := 0, 0
	for i := 0; i < N; i++ {
		if S[i] == 'W' {
			lc++
		}
		if S[(N-1)-i] == 'E' {
			rc++
		}
		l[i] = lc
		r[(N-1)-i] = rc
	}

	ans := N
	for i := 0; i < N; i++ {
		lc, rc := 0, 0
		if i > 0 {
			lc = l[i-1]
		}
		if i < N-1 {
			rc = r[i+1]
		}
		c := lc + rc
		if c < ans {
			ans = c
		}
	}
	fmt.Println(ans)
}
