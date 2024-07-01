package main

import (
	"fmt"
)

const (
	m = 1000000007
	n = 2001
)

var fact, inv, invfact [2001]int

func init() {
	fact[0], fact[1] = 1, 1
	inv[0], inv[1] = 1, 1
	invfact[0], invfact[1] = 1, 1
	for i := 2; i < n; i++ {
		fact[i] = fact[i-1] * i % m
		inv[i] = (m - m/i) * inv[m%i] % m
		invfact[i] = invfact[i-1] * inv[i] % m
	}
}

func combination(n, r int) int {
	return fact[n] * (invfact[n-r] * invfact[r] % m) % m
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	for i := 1; i <= k; i++ {
		a := combination(n-k+1, i)
		b := combination(k-1, i-1)
		fmt.Println(a * b % m)
	}
}
