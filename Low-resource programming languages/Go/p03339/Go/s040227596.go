package main

import "fmt"

const inf = 1 << 60

func reverse(a []int) {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
	return
}
func chmin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}
func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	w := make([]int, n)
	e := make([]int, n)
	for i := 0; i < n; i++ {
		if s[i] == 'W' {
			w[i] = 1
		} else {
			e[i] = 1
		}
	}
	w = append([]int{0}, w...)
	for i := 1; i < len(w); i++ {
		w[i] += w[i-1]
	}
	e = append(e, 0)
	reverse(e)
	for i := 1; i < len(e); i++ {
		e[i] += e[i-1]
	}
	reverse(e)
	minCost := inf
	for i := 0; i < n; i++ {
		cost := (w[i] - w[0]) + (e[i+1] - e[n])
		chmin(&minCost, cost)
	}
	fmt.Println(minCost)
}
