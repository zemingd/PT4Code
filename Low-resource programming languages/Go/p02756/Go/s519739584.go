package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scan() string {
	sc.Scan()
	return sc.Text()
}
func iScan() int {
	n, _ := strconv.Atoi(Scan())
	return n
}
func fScan() float64 {
	n, _ := strconv.ParseFloat(Scan(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func SScan(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scan()
	}
	return a
}
func iSScan(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = iScan()
	}
	return a
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
func sum(a []int) int {
	x := 0
	for _, v := range a {
		x += v
	}
	return x
}

var mod int = 1000000007
var mod1 int = 1000000007

type con struct {
	a int
	b int
}

func conunt(d int, a []int) int {
	ans := 0
	for i := 0; i < len(a); i++ {
		if a[i] == d {
			ans++
		}
	}
	return ans
}

func modPlus(a int, b int) int {
	return a%mod1 + b%mod1
}

func modTime(a int, b int) int {
	return a % mod1 * b % mod1
}

func modMinus(a int, b int) int {
	tm := (a - b) % mod1
	if tm < 0 {
		tm += mod1
	}
	return tm
}

func modDiv(a int, b int) int {
	return a % mod1 * modInv(b) % mod1
}

func modInv(a int) int {
	b := mod1
	u := 1
	v := 0
	for {
		if b == 0 {
			break
		}
		t := a / b
		a -= t * b
		a, b = b, a
		u -= t * v
		u, v = v, u
	}
	u %= mod1
	if u < 0 {
		u += mod1
	}
	return u
}

var inf = 1000000007

// UnionFind 構造体 for tree
type UnionFind struct {
	par []int
}

/*コンストラクタ*/
func newUnionFind(N int) *UnionFind {
	u := new(UnionFind)
	u.par = make([]int, N)
	for i := range u.par {
		u.par[i] = -1
	}
	return u
}

func (u UnionFind) root(x int) int {
	if u.par[x] < 0 {
		return x
	}
	u.par[x] = u.root(u.par[x])
	return u.par[x]
}

func (u UnionFind) unite(x int, y int) {
	xr := u.root(x)
	yr := u.root(y)
	if xr == yr {
		return
	}
	u.par[yr] += u.par[xr]
	u.par[xr] = yr
}

func (u UnionFind) same(x, y int) bool {
	if u.root(x) == u.root(y) {
		return true
	}
	return false
}

func (u UnionFind) size(x int) int {
	return -u.par[u.root(x)]
}

type xy struct {
	y int
	x int
}

var d map[xy]int

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	s := Scan()
	q := iScan()
	flag := 0
	for i := 0; i < q; i++ {
		t := iScan()
		if t == 1 {
			flag++
			flag %= 2
		} else {
			a := iScan()
			b := Scan()
			if (flag+a)%2 == 1 {
				s = b + s
			} else {
				s = s + b
			}
		}
	}
	if flag == 1 {
		fmt.Println(reverse(s))
	} else {
		fmt.Println(s)
	}
}
func reverse(s string) string {

	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}