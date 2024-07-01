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
var inf int = 1000000000000

type lazysegtree struct {
	n    int
	node []int
	lazy []int
}

func newlazySegtree(v []int) *lazysegtree {
	sz := len(v)
	_n := 1
	for _n < sz {
		_n *= 2
	}
	_node := make([]int, 2*_n-1)
	_lazy := make([]int, 2*_n-1)
	for i := 0; i < sz; i++ {
		_node[i+_n-1] = v[i]
	}
	for i := _n - 2; i >= 0; i-- {
		_node[i] = _node[2*i+1] + _node[2*i+2]
	}
	return &lazysegtree{
		n:    _n,
		node: _node,
		lazy: _lazy,
	}
}

// k番目のノードについて遅延評価を行う
func (u lazysegtree) eval(k int, l int, r int) {
	if u.lazy[k] != 0 {
		u.node[k] += u.lazy[k]
		if r-l > 1 {
			u.lazy[2*k+1] += u.lazy[k] / 2
			u.lazy[2*k+2] += u.lazy[k] / 2
		}
		u.lazy[k] = 0
	}
	return
}

func (u lazysegtree) add(a int, b int, x int, k int, l int, r int) {
	if r < 0 {
		r = u.n
	}
	u.eval(k, l, r)
	if b <= l || r <= a {
		return
	}
	if a <= l && r <= b {
		u.lazy[k] += (r - l) * x
		u.eval(k, l, r)
	} else {
		u.add(a, b, x, 2*k+1, l, (l+r)/2)
		u.add(a, b, x, 2*k+2, (l+r)/2, r)
		u.node[k] = u.node[2*k+1] + u.node[2*k+2]
	}
}

//[a,b)内の合計の取得
func (u lazysegtree) getsum(a int, b int, k int, l int, r int) int {
	if r < 0 {
		r = u.n
	}
	if r <= a || b <= l {
		return 0
	}
	u.eval(k, l, r)
	if a <= l && r <= b {
		return u.node[k]
	}
	vl := u.getsum(a, b, 2*k+1, l, (l+r)/2)
	vr := u.getsum(a, b, 2*k+2, (l+r)/2, r)
	return vl + vr
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	//予備
	a := iScan()
	b := iScan()
	c := iScan()
	d := iScan()
	a1 := a * c
	a2 := a * d
	a3 := b * c
	a4 := b * d
	tmp := []int{a1, a2, a3, a4}
	fmt.Println(max(tmp))
}