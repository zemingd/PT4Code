package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

const mod = 998244353
const facNum = 300001

var ans = 0
var N, M, Q int
var a []int
var b []int
var c []int
var d []int

func main() {
	sc := newScanner(os.Stdin)
	N, M, Q = sc.i(), sc.i(), sc.i()
	a = make([]int, Q)
	b = make([]int, Q)
	c = make([]int, Q)
	d = make([]int, Q)
	for i := 0; i < Q; i++ {
		a[i], b[i], c[i], d[i] = sc.i(), sc.i(), sc.i(), sc.i()
	}
	dfs([]int{1})
	fmt.Println(ans)
}

func dfs(A []int) {
	if len(A) == N+1 {
		now := 0
		for i := 0; i < Q; i++ {
			if A[b[i]]-A[a[i]] == c[i] {
				now += d[i]
			}
		}
		ans = max(ans, now)
		return
	}
	A = append(A, A[len(A)-1])
	for A[len(A)-1] <= M {
		dfs(A)
		A[len(A)-1] += 1
	}
}

// fmt.Println("Yes")
// fmt.Println("No")

// I/O
type scanner struct {
	sc *bufio.Scanner
}

func newScanner(input io.Reader) *scanner {
	sc := bufio.NewScanner(input)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &scanner{sc}
}

func (s *scanner) s() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *scanner) i() int {
	i, e := strconv.Atoi(s.s())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *scanner) f() float64 {
	f, e := strconv.ParseFloat(s.s(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func (s *scanner) bs() []byte {
	return []byte(s.s())
}

func (s *scanner) is(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.i()
	}
	return res
}

func (s *scanner) fs(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.f()
	}
	return res
}

//const factorial = new
func Pow(a, n int) int {
	ans := 1
	for n > 0 {
		if (n & 1) == 1 {
			ans = ans * a % mod
		}
		a = a * a % mod
		n = n >> 1
	}
	return ans
}

func Gcd(a, b int) int {
	if a < b {
		return Gcd(b, a)
	}
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func combination(n, k int, fac, ifac []int) int {
	if n < k || n < 0 {
		return 0
	}
	if k == 0 {
		return 1
	}
	//while n != 0
	ans := ifac[k] * ifac[n-k] % mod
	return ans * fac[n] % mod
}

// 階乗: factorial
// コンビネーションを計算する際に前もって計算しておく
// fac[k] => k! (mod M)
// ifac[k] => k!^(M-2) (mod M)
// n: ex. 2 * 10^5 => 200001
// fac, ifac := factorial()
func factorial() (fac []int, ifac []int) {
	fac = make([]int, facNum)
	fac[0] = 1
	ifac = make([]int, facNum)
	ifac[0] = 1
	for i := 1; i < facNum; i++ {
		fac[i] = fac[i-1] * i % mod
		ifac[i] = ifac[i-1] * Pow(i, mod-2) % mod
	}
	return
}
