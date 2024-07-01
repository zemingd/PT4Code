package main

import (
	"bufio"
	"fmt"
	"io"
	"math/big"
	"os"
	"strconv"
)

const mod = 1000000007
const facNum = 300001
const MAX_A = 1000000 + 5
const INF = 123456789

var cost [][]int
var K int
var H int
var W int
var G [][]int

var dx = []int{-1, 0, 1, 0}
var dy = []int{0, -1, 0, 1}
var one = big.NewRat(1, 1)

func dfs(x, y, move int, direction int, rat *big.Rat) {
	if cost[x][y] < move {
		return
	}
	cost[x][y] = move

	for i := 0; i < 4; i++ {
		var r *big.Rat
		r = big.NewRat(1, int64(K))
		nm := move
		if i == direction && rat.Cmp(one) < 0 {
			r = r.Add(rat, r)
		} else {
			nm += 1
		}
		nx := dx[i] + x
		ny := dy[i] + y
		if nx < 0 || nx >= H || ny < 0 || ny >= W {
			continue
		}
		if G[nx][ny] == 1 {
			continue
		}
		if cost[nx][ny] < nm {
			continue
		}
		dfs(nx, ny, nm, i, r)
	}
}

func main() {
	sc := newScanner(os.Stdin)
	H, W, K = sc.i(), sc.i(), sc.i()
	SX, SY, GX, GY := sc.i(), sc.i(), sc.i(), sc.i()
	G = make([][]int, H)
	for i := 0; i < H; i++ {
		g := make([]int, W)
		b := sc.s()
		for index, r := range b {
			if r == '@' {
				g[index] = 1
			}
		}
		G[i] = g
	}
	cost = make([][]int, H)
	for i := 0; i < H; i++ {
		cost[i] = IntSlice(W, INF)
	}
	//cost[SX-1][SY-1] = 0
	dfs(SX-1, SY-1, 0, 0, one)
	if cost[GX-1][GY-1] == INF {
		fmt.Println(-1)
		return
	}
	fmt.Println(cost[GX-1][GY-1])
}

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

// vs: sorted slice int value
func lowerBound(vs []int, v int) (index int) {
	n := len(vs) / 2
	m := len(vs)
	for m != n {
		if vs[n] < v {
			n = (m-n+1)/2 + n
			//m = m
		} else {
			m = n
			n = n / 2
		}
	}
	return n
}

func IntSlice(n, init int) []int {
	r := make([]int, n)
	for i := range r {
		r[i] = init
	}
	return r
}
