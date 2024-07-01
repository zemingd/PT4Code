package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	M := N - K
	for i := 1; i <= K; i++ {
		if i > M+1 {
			fmt.Println(0)
			continue
		}
		v := ModCombination(M+1, i) * ModCombination(K-1, i-1) % Mod
		fmt.Println(v)
	}
}

const Mod = int(1e9) + 7

func ModInverse(n int) int { return ModPow(n, Mod-2) }
func ModDiv(a, b int) int  { return a * ModInverse(b) }
func ModPow(a, b int) int {
	x := 1
	for b > 0 {
		if b&1 == 1 {
			x = x * a % Mod
		}
		a = a * a % Mod
		b >>= 1
	}
	return x
}
func ModFactorial(n int) int      { return fac[n] }
func ModPermutation(n, r int) int { return fac[n] * finv[n-r] % Mod }
func ModCombination(n, k int) int { return fac[n] * (finv[k] * finv[n-k] % Mod) % Mod }

var fac, finv, inv []int

func init() {
	const MAX = 2001
	fac, finv, inv = make([]int, MAX+1), make([]int, MAX+1), make([]int, MAX+1)
	fac[0], fac[1], finv[0], finv[1], inv[1] = 1, 1, 1, 1, 1
	for i := 2; i <= MAX; i++ {
		fac[i] = fac[i-1] * i % Mod
		inv[i] = Mod - inv[Mod%i]*(Mod/i)%Mod
		finv[i] = finv[i-1] * inv[i] % Mod
	}
}
