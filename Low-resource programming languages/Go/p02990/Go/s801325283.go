package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

const MAX = 210000
const MOD = 1000000007

var fac, finv, inv [MAX]int64

func COMinit() {
	fac[0], fac[1] = 1, 1
	finv[0], finv[1] = 1, 1
	inv[1] = 1
	for i := int64(2); i < MAX; i++ {
		fac[i] = fac[i-1] * i % MOD
		inv[i] = MOD - inv[MOD%i]*(MOD/i)%MOD
		finv[i] = finv[i-1] * inv[i] % MOD
	}
}

func COM(n, k int64) int64 {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % MOD) % MOD
}

func main() {
	sc.Split(bufio.ScanWords)

	N, K := int64(nextInt()), int64(nextInt())
	COMinit()

	for k := int64(1); k <= K; k++ {
		fmt.Println(COM(N-K+1, k) * COM(K-1, k-1) % MOD)
	}

}
