package main

import "fmt"

var fac, ifac, inv []int

const mod int = int(1e9 + 7)

func main() {
	nmax := int(2e6)
	fac = make([]int, nmax+1)
	ifac = make([]int, nmax+1)
	inv = make([]int, nmax+1)

	fac[0], fac[1] = 1, 1
	ifac[0], ifac[1] = 1, 1
	inv[0], inv[1] = 1, 1
	for i := 2; i <= nmax; i++ {
		v := i % mod
		fac[i] = fac[i-1] * v % mod
		inv[i] = (mod - (mod/v)*inv[mod%v]%mod)
		ifac[i] = ifac[i-1] * inv[i] % mod
	}

	var X, Y int
	fmt.Scan(&X, &Y)
	s := 2*X - Y
	t := -X + 2*Y
	if s%3 != 0 || t%3 != 0 || s < 0 || t < 0 {
		fmt.Println(0)
		return
	}
	s /= 3
	t /= 3
	fmt.Println((fac[s+t] * ifac[s] % mod) * ifac[t] % mod)
}
