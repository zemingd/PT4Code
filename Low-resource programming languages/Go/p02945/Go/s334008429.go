//go:generate echo "https://atcoder.jp/contests/abc137/tasks/abc137_a"
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

func main() {
	A, B := scan.Int(), scan.Int()
	fmt.Println(imax(A+B, imax(A-B, A*B)))
}

type scanner struct {
	*bufio.Scanner
}

func newScanner(r io.Reader) *scanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	s.Buffer(nil, 100000000)
	return &scanner{s}
}

func (s *scanner) String() string {
	s.Scan()
	return s.Text()
}

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

func (s *scanner) Int() int {
	n, _ := strconv.Atoi(s.String())
	return n
}

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

func (s *scanner) Float64() float64 {
	f, _ := strconv.ParseFloat(s.String(), 64)
	return f
}

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

func isum(X []int) int {
	s := 0
	for _, x := range X {
		s += x
	}
	return s
}

func chmax(x *int, v int) {
	if *x < v {
		*x = v
	}
}

func chmin(x *int, v int) {
	if *x > v {
		*x = v
	}
}

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

var mod = 1000000007

func setMintMod(x int) {
	mod = x
}

type mint int

func newMint(v int) mint {
	return mint((v%mod + mod) % mod)
}

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

func (x mint) Mul(y mint) mint {
	return (x * y) % mint(mod)
}

func (x mint) pow(n int) mint {
	if n == 0 {
		return mint(1)
	}
	a := x.pow(n >> 1)
	a = a.Mul(a)
	if n&1 != 0 {
		a = a.Mul(x)
	}
	return a
}

func (x mint) Inverse() mint {
	return x.pow(mod - 2)
}

func (x mint) Div(y mint) mint {
	return x * y.Inverse()
}

func (x mint) Neg() mint {
	return newMint(int(-x))
}

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

func (f *factorial) Get(n int) mint {
	return f.fact[n]
}

func (f *factorial) GetInverse(n int) mint {
	return f.factInverse[n]
}

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

func (s *sieve) IsPrime(x int) bool {
	return s.maxFactors[x] == x
}

func (s *sieve) Factor(x int) map[int]int {
	m := map[int]int{}
	for x != 1 {
		m[s.maxFactors[x]]++
		x /= s.maxFactors[x]
	}
	return m
}
