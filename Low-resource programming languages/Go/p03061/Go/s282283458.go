package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	l := make([]int, N+1)
	r := make([]int, N+1)

	for i := 0; i < N; i++ {
		l[i+1] = gcd(l[i], a[i])
	}
	for i := N - 1; i >= 0; i-- {
		r[i] = gcd(r[i+1], a[i])
	}
	w := 0
	for i := 0; i < N; i++ {
		wl := l[i]
		wr := r[i+1]
		w = max(w, gcd(wl, wr))
	}
	fmt.Println(w)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}