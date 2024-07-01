package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner
var out *bufio.Writer

func main() {
	sc = bufio.NewScanner(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
	buf := make([]byte, 1<<20)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	n := nextInt()

	t := newTree(n)
	for i := 0; i < n; i++ {
		a := nextInt()
		t.set(i, a)
	}
	t.build()

	i := t.find(0, 0, n)
	if i&1 == 1 {
		i--
	}
	maxgcd := t.node[0]
	for j := 0; j < 2; j++ {
		k := i + j + t.size - 1
		tmp := t.node[k]
		t.update(i+j, -1)
		maxgcd = intMax(maxgcd, t.node[0])
		t.update(i+j, tmp)
	}

	fmt.Fprintln(out, maxgcd)
}
func gcd(x, y int) int {
	if x < y {
		x, y = y, x
	}
	for y > 0 {
		x, y = y, x%y
	}
	return x
}
func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}

type tree struct {
	node []int
	size int
	ex   int
}

func newTree(n int) *tree {
	size := 1
	for size < n {
		size <<= 1
	}
	return &tree{
		node: make([]int, 2*size-1),
		size: size,
		ex:   0,
	}
}
func (t *tree) set(i, v int) {
	t.node[i+t.size-1] = v
}
func (t *tree) build() {
	for k := t.size - 2; k >= 0; k-- {
		t.node[k] = gcd(t.node[2*k+1], t.node[2*k+2])
	}
}
func (t *tree) update(i, v int) {
	k := t.size + i - 1
	t.node[k] = v
	for k > 0 {
		k = (k - 1) / 2
		t.node[k] = gcd(t.node[2*k+1], t.node[2*k+2])
	}
}
func (t *tree) query(a, b int) int {
	return t.qreq(a, b, 0, 0, t.size)
}
func (t *tree) qreq(a, b, k, l, r int) int {
	if b <= l || r <= a {
		return t.ex
	}
	if a <= l && r <= b {
		return t.node[k]
	}
	vl := t.qreq(a, b, 2*k+1, l, (l+r)/2)
	vr := t.qreq(a, b, 2*k+2, (l+r)/2, r)
	return gcd(vl, vr)
}
func (t *tree) find(k, l, r int) int {
	if k <= t.size-2 {
		if t.node[2*k+1] < t.node[2*k+2] {
			return t.find(2*k+1, l, (l+r)/2)
		} else {
			return t.find(2*k+2, l, (l+r)/2)
		}
	}
	return k - (t.size - 1)
}

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
