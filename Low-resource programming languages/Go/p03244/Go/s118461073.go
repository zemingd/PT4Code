//go:generate echo "https://atcoder.jp/contests/abc111/tasks/arc103_a"
package main

import (
	"bufio"
	"fmt"
	"io"
	"math/big"
	"os"
	"strconv"
)

var scan = newScanner(os.Stdin)

func solve(vs []int) int {
	mo, me := map[int]int{}, map[int]int{}
	for i, v := range vs {
		if i%2 == 0 { // odd
			mo[v]++
		} else { // even
			me[v]++
		}
	}
	ov1, oc1, oc2 := 0, 0, 0
	for v, c := range mo {
		if oc1 < c {
			oc2 = oc1
			oc1 = c
			ov1 = v
		}
	}
	ev1, ec1, ec2 := 0, 0, 0
	for v, c := range me {
		if ec1 < c {
			ec2 = ec1
			ec1 = c
			ev1 = v
		}
	}
	if ov1 != ev1 {
		return len(vs) - oc1 - ec1
	}
	return len(vs) - imax(oc1+ec2, ec1+oc2)
}

func main() {
	n := scan.Int()
	vs := scan.Ints(n)
	fmt.Println(solve(vs))
}

// scanner
type scanner struct {
	*bufio.Scanner
}

func newScanner(r io.Reader) *scanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	s.Buffer(nil, 100000000)
	return &scanner{s}
}

func (s *scanner) String() string { s.Scan(); return s.Text() }

func (s *scanner) Strings(l int) []string {
	if l == 0 {
		return []string{}
	}
	sl := make([]string, l, l)
	for i := range sl {
		sl[i] = s.String()
	}
	return sl
}

func (s *scanner) Int() int { n, _ := strconv.Atoi(s.String()); return n }

func (s *scanner) Ints(l int) []int {
	if l == 0 {
		return []int{}
	}
	sl := make([]int, l, l)
	for i := range sl {
		sl[i] = s.Int()
	}
	return sl
}

func (s *scanner) Float64() float64 { f, _ := strconv.ParseFloat(s.String(), 64); return f }

func (s *scanner) Float64s(l int) []float64 {
	if l == 0 {
		return []float64{}
	}
	sl := make([]float64, l, l)
	for i := range sl {
		sl[i] = s.Float64()
	}
	return sl
}

func (s *scanner) BigInt() *big.Int {
	n, _ := strconv.ParseInt(s.String(), 10, 64)
	return big.NewInt(n)
}

func (s *scanner) BigInts(l int) []*big.Int {
	if l == 0 {
		return []*big.Int{}
	}
	sl := make([]*big.Int, l, l)
	for i := range sl {
		sl[i] = s.BigInt()
	}
	return sl
}

func iabs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func imax(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func imin(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func ipow(x, n int) int {
	if n == 0 {
		return 1
	}
	a := ipow(x, n>>1)
	a *= a
	if n&1 != 0 {
		a *= x
	}
	return a
}

func ifact(x int) int {
	f := 1
	for i := 2; i <= x; i++ {
		f *= i
	}
	return f
}

func isum(X []int) int {
	s := 0
	for _, x := range X {
		s += x
	}
	return s
}

func chmax(x *int, v int) { *x = imax(*x, v) }

func chmin(x *int, v int) { *x = imin(*x, v) }

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int { return a * b / gcd(a, b) }

func factor(n int) map[int]int {
	m := map[int]int{}
	for i := 2; i*i <= n; i++ {
		for n%i == 0 {
			n /= i
			m[i]++
		}
	}
	if n != 1 {
		m[n]++
	}
	return m
}

func perm(X []int) [][]int {
	makeCopy := func(X []int) []int { return append(make([]int, 0, len(X)), X...) }
	n := len(X)
	c := makeCopy(X)
	res := append(make([][]int, 0, ifact(n)), makeCopy(c))
	p := make([]int, n+1, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = i
	}
	for i := 1; i < n; {
		p[i]--
		j := 0
		if i%2 == 1 {
			j = p[i]
		}
		c[i], c[j] = c[j], c[i]
		res = append(res, makeCopy(c))
		for i = 1; p[i] == 0; i++ {
			p[i] = i
		}
	}
	return res
}

func ndigit(x int) int {
	d := 0
	for ; x > 0; x /= 10 {
		d++
	}
	return d
}

// iheap
type iheap []int

func (h iheap) Len() int { return len(h) }

func (h iheap) Less(i, j int) bool { return h[i] < h[j] }

func (h iheap) Swap(i, j int) { h[i], h[j] = h[j], h[i] }

func (h *iheap) Push(x interface{}) { *h = append(*h, x.(int)) }

func (h *iheap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

// mint
type mint int

var mod = 1000000007

func setMintMod(x int) { mod = x }

func newMint(v int) mint { return mint((v%mod + mod) % mod) }

func (x mint) Add(y mint) mint {
	v := x + y
	if v >= mint(mod) {
		return v - mint(mod)
	}
	return v
}

func (x mint) Sub(y mint) mint {
	v := x + mint(mod) - y
	if v >= mint(mod) {
		return v - mint(mod)
	}
	return v
}

func (x mint) Mul(y mint) mint { return (x * y) % mint(mod) }

func (x mint) Pow(p int) mint {
	if p == 0 {
		return mint(1)
	}
	a := x.Pow(p >> 1)
	a = a.Mul(a)
	if p&1 != 0 {
		a = a.Mul(x)
	}
	return a
}

func (x mint) Inverse() mint { return x.Pow(mod - 2) }

func (x mint) Div(y mint) mint { return x.Mul(y.Inverse()) }

func (x mint) Neg() mint { return newMint(int(-x)) }

// factorial
type factorial struct {
	fact        []mint
	factInverse []mint
}

func newFactorial(n int) *factorial {
	f := new(factorial)
	f.init(n)
	return f
}

func (f *factorial) init(n int) {
	fact := make([]mint, n+1, n+1)
	fact[0] = newMint(1)
	for i := 1; i <= n; i++ {
		fact[i] = fact[i-1].Mul(newMint(i))
	}

	inv := make([]mint, n+1, n+1)
	inv[n] = fact[n].Inverse()
	for i := n; i >= 1; i-- {
		inv[i-1] = inv[i].Mul(newMint(i))
	}

	f.fact = fact
	f.factInverse = inv
}

func (f *factorial) Get(n int) mint { return f.fact[n] }

func (f *factorial) GetInverse(n int) mint { return f.factInverse[n] }

func (f *factorial) Permutation(n, k int) mint {
	if k < 0 || n < k {
		return 0
	}
	return f.fact[n].Mul(f.factInverse[n-k])
}

func (f *factorial) Combination(n, k int) mint {
	if k < 0 || n < k {
		return 0
	}
	return f.fact[n].Mul(f.factInverse[k]).Mul(f.factInverse[n-k])
}

// sieve
type sieve struct {
	n          int
	primes     []int
	maxFactors []int
}

func newSieve(n int) *sieve {
	s := &sieve{
		n:          n,
		primes:     []int{},
		maxFactors: make([]int, n+1, n+1),
	}
	s.init()
	return s
}

func (s *sieve) init() {
	s.maxFactors[0] = -1
	s.maxFactors[1] = -1
	for i := 2; i <= s.n; i++ {
		if s.maxFactors[i] != 0 {
			continue
		}
		s.primes = append(s.primes, i)
		s.maxFactors[i] = i
		for j := i * i; j <= s.n; j += i {
			if s.maxFactors[j] == 0 {
				s.maxFactors[j] = i
			}
		}
	}
}

func (s *sieve) IsPrime(x int) bool { return s.maxFactors[x] == x }

func (s *sieve) Factor(x int) map[int]int {
	m := map[int]int{}
	for x != 1 {
		m[s.maxFactors[x]]++
		x /= s.maxFactors[x]
	}
	return m
}
