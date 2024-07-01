package main

import (
	"fmt"
)

func valid(n, p int) bool {
	if p < 357 {
		return false
	}
	if p > n {
		return false
	}
	var exists [10]bool
	for p > 0 {
		exists[p%10] = true
		p /= 10
	}
	if !(exists[3] && exists[5] && exists[7]) {
		return false
	}
	return true
}

func rec(n, p, a, len int) int {
	var count int
	if a < len {
		count += rec(n, p*10+3, a+1, len)
		count += rec(n, p*10+5, a+1, len)
		count += rec(n, p*10+7, a+1, len)
	}
	if valid(n, p) {
		count++
	}
	return count
}

func target(n int) int {
	if n < 357 {
		return 0
	}

	var ns []int
	tmp := n
	for tmp != 0 {
		ns = append(ns, tmp%10)
		tmp /= 10
	}
	count := rec(n, 0, 0, len(ns))
	return count
}

func main() {
	var in int
	fmt.Scan(&in)
	fmt.Println(target(in))
}
