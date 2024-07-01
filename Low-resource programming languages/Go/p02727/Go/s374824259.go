// Codeforces 1.12.6
// AtCoder 1.6
// Paiza 1.7.3
// TODO: Remove int64 funcs when `strconv.Atoi("123456345678")` returns the right result AT CODEFORCES.
package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

// alias of fmt.Pirntln
func cout(a ...interface{}) {
	fmt.Println(a...)
}

func consoleIn() tokenizer {
	scn := bufio.NewScanner(os.Stdin)
	scn.Split(bufio.ScanWords)
	max := 1024 * 1024 * 32 // 32 Mib
	buf := make([]byte, max)
	scn.Buffer(buf, max)
	return tokenizer{Scanner: scn}
}

type tokenizer struct {
	Scanner *bufio.Scanner
}

func (in *tokenizer) tt() string {
	in.Scanner.Scan()
	return in.Scanner.Text()
}
func (in *tokenizer) ts(n int) []string {
	a := make([]string, n)
	for i := range a {
		a[i] = in.tt()
	}
	return a
}
func (in *tokenizer) ii() int {
	i, _ := strconv.Atoi(in.tt())
	return i
}
func (in *tokenizer) i2() (int, int) {
	return in.ii(), in.ii()
}
func (in *tokenizer) i3() (int, int, int) {
	return in.ii(), in.ii(), in.ii()
}
func (in *tokenizer) is(n int) []int {
	a := make([]int, n)
	for i := range a {
		a[i] = in.ii()
	}
	return a
}
func (in *tokenizer) im(h int, w int) [][]int {
	a := make([][]int, h)
	for y := range a {
		a[y] = make([]int, w)
		for x := range a[y] {
			a[y][x] = in.ii()
		}
	}
	return a
}

func (in *tokenizer) ib(base int) int {
	i, _ := strconv.ParseInt(in.tt(), base, 64)
	return int(i)
}

func (in *tokenizer) ff() float64 {
	i, _ := strconv.ParseFloat(in.tt(), 64)
	return i
}
func (in *tokenizer) fs(n int) []float64 {
	a := make([]float64, n)
	for i := range a {
		a[i] = in.ff()
	}
	return a
}

type intMath struct{}

func (*intMath) max(a ...int) int {
	t := a[0]
	for _, v := range a {
		if t < v {
			t = v
		}
	}
	return t
}
func (*intMath) min(a ...int) int {
	t := a[0]
	for _, v := range a {
		if t > v {
			t = v
		}
	}
	return t
}
func (*intMath) sum(a ...int) int {
	t := int(0)
	for _, v := range a {
		t += v
	}
	return t
}
func (*intMath) abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func (mt *intMath) gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	return mt.gcd(b, a%b)
}
func (mt *intMath) lcm(a, b int) int {
	gcd := mt.gcd(a, b)
	return gcd * (a / gcd) * (b / gcd)
}

type stringify struct{}

// int slice to a line/lines.
func (*stringify) is(slice []int, vertical bool) string {
	ret := make([]string, len(slice))
	for i, x := range slice {
		ret[i] = strconv.FormatInt(int64(x), 10)
	}
	var separator string
	if vertical {
		separator = "\n"
	} else {
		separator = " "
	}
	return strings.Join(ret, separator)
}

// int matrix to lines.
func (stringify *stringify) im(matrix [][]int) string {
	ret := make([]string, len(matrix))
	for i := range matrix {
		ret[i] = stringify.is(matrix[i], false)
	}
	separator := "\n"
	return strings.Join(ret, separator)
}

// comparable int slices
type cmpimat [][]int

func (p cmpimat) Len() int { return len(p) }
func (p cmpimat) Less(i, j int) bool {
	for x := range p[0] {
		if p[i][x] == p[j][x] {
			continue
		} else if p[i][x] < p[j][x] {
			return true
		} else {
			return false
		}
	}
	return false
}
func (p cmpimat) Swap(i, j int) { p[i], p[j] = p[j], p[i] }
func (p *cmpimat) Push(slice interface{}) {
	x := slice.([]int)
	*p = append(*p, x)
	heap.Fix(p, len(*p)-1)
}
func (p *cmpimat) Pop() interface{} {
	// https://golang.org/pkg/container/heap/
	var ret []int
	n := len(*p)
	ret, *p = (*p)[n-1], (*p)[0:n-1]
	return ret
}
func (p *cmpimat) push(a ...int) {
	p.Push(a)
}
func (p *cmpimat) pop() []int {
	x := heap.Pop(p).([]int)
	return x
}

func newDeque() *deque {
	return &deque{}
}

type deque struct {
	prep []interface{}
	ap   []interface{}
}

func (d *deque) push(item interface{}) {
	d.ap = append(d.ap, item)
}

func (d *deque) unshift(item interface{}) {
	d.prep = append(d.prep, item)
}

func (d *deque) empty() bool {
	return len(d.ap) == 0 && len(d.prep) == 0
}

func (d *deque) pop() interface{} {
	lenap := len(d.ap)
	if lenap != 0 {
		v := d.ap[lenap-1]
		d.ap = d.ap[:lenap-1]
		return v
	}
	v := d.prep[0]
	d.prep = d.prep[1:]
	return v
}

func (d *deque) shift() interface{} {
	lenprep := len(d.prep)
	if lenprep != 0 {
		v := d.prep[lenprep-1]
		d.prep = d.prep[:lenprep-1]
		return v
	}
	v := d.ap[0]
	d.ap = d.ap[1:]
	return v
}

const imod int = 1000000007

var cin = consoleIn()
var mth = intMath{}
var str = stringify{}
var d4 = [][]int{{-1, 0}, {0, -1}, {1, 0}, {0, 1}}

func main() {
	x, y := cin.i2()
	a, b, c := cin.i3()
	p, q, r := cin.is(a), cin.is(b), cin.is(c)

	sort.Ints(p)
	sort.Ints(q)
	sort.Ints(r)

	// cout(x, y, a, b, c, p, q, r)

	p = p[a-x:]
	q = q[b-y:]

	ans := mth.sum(p...) + mth.sum(q...)

	for len(r) != 0 {
		// paint an apple red
		rans := 0
		if len(p) != 0 {
			rans = ans - p[0] + r[len(r)-1]
		}
		// or paint an apple green
		gans := 0
		if len(q) != 0 {
			gans = ans - q[0] + r[len(r)-1]
		}

		if rans > gans {
			if ans > rans {
				break
			}
			ans = mth.max(ans, rans)
			p = p[1:]
			r = r[:len(r)-1]
		} else {
			if ans > gans {
				break
			}
			ans = mth.max(ans, gans)
			q = q[1:]
			r = r[:len(r)-1]
		}
	}

	cout(ans)
}
