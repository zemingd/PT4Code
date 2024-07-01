package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var (
	N int
	W int
	w []int
	v []int

	memo [110][110]int
)

func main() {
	N = readi()
	W = readi()
	w = make([]int, N)
	v = make([]int, N)
	for i := 0; i < N; i++ {
		w[i] = readi()
		v[i] = readi()
	}

	ans := knapsack(0, W)
	fmt.Println(ans)
}

func knapsack(i, b int) int { // i番目の荷物について考える。残り容量はb
	if memo[i][b] != 0 { // 既に計算したことがあるなら再利用
		return memo[i][b]
	}
	var ret int
	if i == N { // もう選ぶ荷物がない
		ret = 0
	} else if b < w[i] { // i番目の荷物が入らない
		ret = knapsack(i+1, b)
	} else {
		use := knapsack(i+1, b-w[i]) + v[i] // i番目の荷物を使う時
		noUse := knapsack(i+1, b)           // i番目の荷物を使わない時
		ret = max(use, noUse)
	}
	memo[i][b] = ret // 結果をメモ
	return ret
}

/*-------------------utilities-------------------*/

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func chmin(x *int, y int) bool {
	if *x > y {
		*x = y
		return true
	}
	return false
}

func chmax(x *int, y int) bool {
	if *x < y {
		*x = y
		return true
	}
	return false
}

// 最大公約数
func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

// 最小公倍数
func lcm(a, b int) int {
	return (a * b) / gcd(a, b)
}

func comb(n, k int) int {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % MOD) % MOD
}

func factorical(n int) int {
	if n > 0 {
		return n * factorical(n-1)
	}
	return 1
}

/*-------------------init-------------------*/

const (
	INF = 1000000000000000000
	MOD = 1e9 + 7

	COMB_MAX = 510000
)

var (
	readString func() string
)

var (
	fac  = [COMB_MAX]int{}
	finv = [COMB_MAX]int{}
	inv  = [COMB_MAX]int{}
)

func init() {
	readString = newReadString(os.Stdin)
}

func combInit() {
	fac[0] = 1
	fac[1] = 1
	finv[0] = 1
	finv[1] = 1
	inv[1] = 1
	for i := 2; i < COMB_MAX; i++ {
		fac[i] = fac[i-1] * i % MOD
		inv[i] = MOD - inv[MOD%i]*(MOD/i)%MOD
		finv[i] = finv[i-1] * inv[i] % MOD
	}
}

/*-------------------inputs-------------------*/

func readi() int {
	return int(readi64())
}

func readi64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readf() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}
