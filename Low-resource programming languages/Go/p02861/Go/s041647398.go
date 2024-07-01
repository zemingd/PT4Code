//go:generate echo "https://atcoder.jp/contests/abc145/tasks/abc145_c"
package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"math/big"
	"os"
	"strconv"
)

var scan = newScanner(os.Stdin)

func Solve(XYs [][2]float64) float64 {
	N := len(XYs)
	s := 0.0
	for i := range XYs {
		for j := range XYs {
			if i == j {
				continue
			}
			s += float64(ifact(N-1)) * math.Sqrt(math.Pow(XYs[i][0]-XYs[j][0], 2)+math.Pow(XYs[i][1]-XYs[j][1], 2))
		}
	}
	return s / float64(ifact(N))
}

func ifact(x int) int {
	f := 1
	for x > 1 {
		f *= x
		x--
	}
	return f
}

func Solve2(points [][2]float64) float64 {
	n := len(points)
	f := newFermat(n)
	sum := 0.
	for i := range points {
		for j := range points {
			if i == j {
				continue
			}
			sum += float64(f.Get(n-1)) * math.Sqrt(math.Pow(points[i][0]-points[j][0], 2)+math.Pow(points[i][1]-points[j][1], 2))
		}
	}
	return sum / float64(f.Get(n))
}

func main() {
	N := scan.Int()
	XYs := make([][2]float64, N, N)
	for i := range XYs {
		XYs[i] = [2]float64{scan.Float64(), scan.Float64()}
	}
	fmt.Printf("%.10f\n", Solve(XYs))
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

func (s *scanner) Floats64(l int) []float64 {
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

type fermat struct {
	fact        []mint
	factInverse []mint
}

func newFermat(n int) *fermat {
	f := new(fermat)
	f.init(n)
	return f
}

func (f *fermat) init(n int) {
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

func (f *fermat) Get(n int) mint {
	return f.fact[n]
}

func (f *fermat) GetInverse(n int) mint {
	return f.factInverse[n]
}

func (f *fermat) Permutation(n, k int) mint {
	if k < 0 || n < k {
		return 0
	}
	return f.fact[n].Mul(f.factInverse[n-k])
}

func (f *fermat) Combination(n, k int) mint {
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
