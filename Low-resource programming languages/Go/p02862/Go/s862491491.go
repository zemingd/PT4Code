package main

import "fmt"

const nmax = 1000000
const mod = int(1e9) + 7

var fac, finv, inv [nmax]int

func comInit() {
	fac[0] = 1
	fac[1] = 1
	finv[0] = 1
	finv[1] = 1
	inv[1] = 1
	for i := 2; i < nmax; i++ {
		fac[i] = fac[i-1] * i % mod
		inv[i] = mod - inv[mod%i]*(mod/i)%mod
		finv[i] = finv[i-1] * inv[i] % mod
	}
}
func comGet(n, k int) int {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % mod) % mod
}

func main() {
	var X, Y int
	fmt.Scan(&X, &Y)
	ans := 0
	if (2*Y-X)%3 == 0 && (2*X-Y)%3 == 0 {
		// 整数解が存在する
		m := (2*Y - X) / 3
		n := (2*X - Y) / 3
		// fmt.Println("m", m, "n", n)
		// 片方の動かし方をm回、もう片方の動かし方をn回行う
		// m+nCm (%mod)を求める
		comInit()
		ans = comGet(m+n, m)
	}
	fmt.Println(ans)
}
