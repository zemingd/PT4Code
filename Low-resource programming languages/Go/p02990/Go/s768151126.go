package main

import "fmt"

var fac [10000]int
var finv [10000]int
var inv [10000]int
var m int = 1000000007

func com_init() {
	fac[0] = 1
	fac[1] = 1
	finv[0] = 1
	finv[1] = 1
	inv[1] = 1
	for i := 2; i < 10000; i++ {
		fac[i] = fac[i-1] * i % m
		inv[i] = m - inv[m%i]*(m/i)%m
		finv[i] = finv[i-1] * inv[i] % m
	}
}

func com(n, k int) int {
	if n < k {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % m) % m

}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	com_init()
	for i := 1; i <= k; i++ {
		fmt.Println(com(n-k+1, i) * com(k-1, i-1) % m)
	}
}
