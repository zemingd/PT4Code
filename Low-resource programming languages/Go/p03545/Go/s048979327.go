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

var mod int = 1000000007

type pair struct {
	fi int
	se int
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	//予備
	n := iScan()
	var (
		a, b, c, d int
	)
	d = n % 10
	c = (n%100 - d) / 10
	b = (n%1000 - c*10 - d) / 100
	a = n / 1000
	fmt.Println(a, b, c, d)
	s1 := "+"
	s2 := "+"
	s3 := "+"
	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for r := 0; r < 2; r++ {
				ans := a
				if i == 0 {
					ans += b
					s1 = "+"
				} else {
					ans -= b
					s1 = "-"
				}
				if j == 0 {
					ans += c
					s2 = "+"
				} else {
					s2 = "-"
					ans -= c
				}
				if r == 0 {
					ans += d
					s3 = "+"
				} else {
					ans -= d
					s3 = "-"
				}
				if ans == 7 {
					fmt.Printf("%d%s%d%s%d%s%d=7\n", a, s1, b, s2, c, s3, d)
					return
				}
			}
		}
	}
}