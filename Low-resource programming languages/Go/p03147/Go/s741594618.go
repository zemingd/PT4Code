// Codeforces 1.12.6
// AtCoder 1.6
// Paiza 1.7.3

package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func cout(a ...interface{}) {
	// simply an alias for:
	fmt.Println(a...)
}

func consoleIn() reader {
	scn := bufio.NewScanner(os.Stdin)
	scn.Split(bufio.ScanWords)
	max := 1048576
	buf := make([]byte, max)
	scn.Buffer(buf, max)
	return reader{Scanner: scn}
}

type reader struct {
	Scanner *bufio.Scanner
}

func (in *reader) s() string {
	in.Scanner.Scan()
	return in.Scanner.Text()
}
func (in *reader) i() int64 {
	return in.ibase(10)
}
func (in *reader) ibase(base int) int64 {
	i, _ := strconv.ParseInt(in.s(), base, 64)
	return i
}
func (in *reader) f() float64 {
	i, _ := strconv.ParseFloat(in.s(), 64)
	return i
}
func (in *reader) ss(n int64) []string {
	a := make([]string, n)
	for i := range a {
		a[i] = in.s()
	}
	return a
}
func (in *reader) is(n int64) []int64 {
	a := make([]int64, n)
	for i := range a {
		a[i] = in.i()
	}
	return a
}
func (in *reader) fs(n int64) []float64 {
	a := make([]float64, n)
	for i := range a {
		a[i] = in.f()
	}
	return a
}
func (in *reader) imat(h int64, w int64) [][]int64 {
	a := make([][]int64, h)
	for y := range a {
		a[y] = make([]int64, w)
		for x := range a[y] {
			a[y][x] = in.i()
		}
	}
	return a
}

type int64Math struct{}

func (*int64Math) max(a ...int64) int64 {
	t := a[0]
	for _, v := range a {
		if t < v {
			t = v
		}
	}
	return t
}
func (*int64Math) min(a ...int64) int64 {
	t := a[0]
	for _, v := range a {
		if t > v {
			t = v
		}
	}
	return t
}
func (*int64Math) sum(a ...int64) int64 {
	t := int64(0)
	for _, v := range a {
		t += v
	}
	return t
}
func (*int64Math) abs(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}
func (int64Math *int64Math) gcd(a, b int64) int64 {
	// returns greatest common divisor.
	if a < b {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	return int64Math.gcd(b, a%b)
}
func (int64Math *int64Math) lcm(a, b int64) int64 {
	// returns least common multiple.
	gcd := int64Math.gcd(a, b)
	return gcd * (a / gcd) * (b / gcd)
}
func (*int64Math) countValues(a []int64) map[int64]int64 {
	mp := make(map[int64]int64)
	for _, v := range a {
		mp[v]++
	}
	return mp
}

type stringifier struct{}

func (*stringifier) join(slice []int64) string {
	// int slice to a line.
	ret := make([]string, len(slice))
	for i, x := range slice {
		ret[i] = strconv.FormatInt(x, 10)
	}
	return strings.Join(ret, " ")
}
func (*stringifier) lines(slice []int64) string {
	// int slice to lines.
	ret := make([]string, len(slice))
	for i, x := range slice {
		ret[i] = strconv.FormatInt(x, 10)
	}
	return strings.Join(ret, "\n")
}
func (stringifier *stringifier) mat(matrix [][]int64) string {
	// int slice matrix to lines.
	ret := make([]string, len(matrix))
	for i := range matrix {
		ret[i] = stringifier.join(matrix[i])
	}
	return strings.Join(ret, "\n")
}
func (*stringifier) bl(b bool) str {
	if b {
		return "Yes"
	}
	return "No"
}

// OO string
type str string

func (s str) upper() string { return strings.ToUpper(string(s)) }
func (s str) lower() string { return strings.ToLower(string(s)) }

// sortable characters
type runes []rune

func (p runes) Len() int           { return len(p) }
func (p runes) Less(i, j int) bool { return p[i] < p[j] }
func (p runes) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

// heap/sort int slices
type comps [][]int64

func (p comps) Len() int { return len(p) }
func (p comps) Less(i, j int) bool {
	for x := range p[0] {
		// Yes, every row in matrix must have the same length.
		if p[i][x] < p[j][x] {
			return true
		}
	}
	return false
}

func (p comps) Swap(i, j int) { p[i], p[j] = p[j], p[i] }
func (p *comps) Push(slice interface{}) {
	x := slice.([]int64)
	*p = append(*p, x)
}
func (p *comps) push(a ...int64) {
	// alias of:
	p.Push(a)
}
func (p *comps) Pop() interface{} {
	// https://golang.org/pkg/container/heap/
	var ret []int64
	n := len(*p)
	ret, *p = (*p)[n-1], (*p)[0:n-1]
	return ret
}
func (p *comps) pop() []int64 {
	// alias of:
	x := heap.Pop(p).([]int64)
	return x
}

// utilities.
const zr int64 = int64(0)
const mod int64 = int64(1000000007)

var cin = consoleIn()
var lm = int64Math{}
var st = stringifier{}
var dyx = [][]int64{{-1, 0}, {0, -1}, {1, 0}, {0, 1}}

func main() {
	// --- read here.
	n := cin.i()
	h := cin.is(n)

	// --- solve here.
	top := lm.max(h...)
	ans := zr
	for _, v := range h {
		ans += top - v
	}

	cout(ans)
}
