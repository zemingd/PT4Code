package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	comInit()

	r := n - k
	for i := 1; i <= k; i++ {
		a := com(r+1, i)
		b := com(k-1, i-1)
		fmt.Println(a * b % mod)
	}
}

// https://qiita.com/drken/items/3b4fdf0a78e7a138cd9a#5-二項係数-ncr

const max int = 1e6
const mod int = 1e9 + 7

var fac [max]int
var finv [max]int
var inv [max]int

// テーブルを作る前処理
func comInit() {
	fac[0], fac[1] = 1, 1
	finv[0], finv[1] = 1, 1
	inv[1] = 1
	for i := 2; i < max; i++ {
		fac[i] = fac[i-1] * i % mod
		inv[i] = mod - inv[mod%i]*(mod/i)%mod
		finv[i] = finv[i-1] * inv[i] % mod
	}
}

// 二項係数計算
func com(n, k int) int {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % mod) % mod
}
