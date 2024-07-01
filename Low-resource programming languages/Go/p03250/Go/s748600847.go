// by syu
package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"math/big"
	"os"
	"sort"
	"strconv"
	"strings"
)

var in = NewScanner(os.Stdin, 0)

func main() {
	x := in.ArrayInt(3)

	sort.Sort(sort.Reverse(sort.IntSlice(x)))

	Pln(x[0]*10 + x[1] + x[2])
}

type Scanner struct {
	*bufio.Scanner
}

func NewScanner(r io.Reader, max int) *Scanner {
	s := bufio.NewScanner(r)
	s.Split(scanWords)
	if max <= 0 {
		max = 100000
	}
	s.Buffer([]byte{}, max)
	return &Scanner{s}
}

func (s *Scanner) String() string {
	s.Scan()
	return s.Text()
}

func (s *Scanner) Rune() rune {
	s.Scan()
	runes := []rune(s.Text())
	if len(runes) != 1 {
		log.Fatalf("not a single rune: %#v\n", runes)
	}
	return runes[0]
}

func (s *Scanner) UInt() uint64 {
	s.Scan()
	i, e := strconv.ParseUint(s.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func (s *Scanner) Double() float64 {
	s.Scan()
	i, e := strconv.ParseFloat(s.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func (s *Scanner) Float() float32 {
	return float32(s.Double())
}

func (s *Scanner) Int() int {
	return int(s.UInt())
}

func (s *Scanner) Int32() int32 {
	return int32(s.UInt())
}

func (s *Scanner) UInt32() uint32 {
	return uint32(s.UInt())
}

func (s *Scanner) ArrayString(n int) (r []string) {
	for i := 0; i < n; i++ {
		r = append(r, s.String())
	}
	return
}

func (s *Scanner) ArrayUInt(n int) (r []uint64) {
	for i := 0; i < n; i++ {
		r = append(r, s.UInt())
	}
	return
}

func (s *Scanner) ArrayInt(n int) (r []int) {
	for i := 0; i < n; i++ {
		r = append(r, s.Int())
	}
	return
}

func (s *Scanner) ArrayUInt32(n int) (r []uint32) {
	for i := 0; i < n; i++ {
		r = append(r, s.UInt32())
	}
	return
}

func (s *Scanner) ArrayInt32(n int) (r []int32) {
	for i := 0; i < n; i++ {
		r = append(r, s.Int32())
	}
	return
}

func (s *Scanner) ArrayDouble(n int) (r []float64) {
	for i := 0; i < n; i++ {
		r = append(r, s.Double())
	}
	return
}

func (s *Scanner) ArrayFloat(n int) (r []float32) {
	for i := 0; i < n; i++ {
		r = append(r, s.Float())
	}
	return
}

func isSpace(b byte) bool {
	return b == ' ' || b == '\n' || b == '\r' || b == '\t'
}

func scanWords(data []byte, atEOF bool) (advance int, token []byte, err error) {
	start := 0
	for start < len(data) && isSpace(data[start]) {
		start++
	}
	for i := start; i < len(data); i++ {
		if isSpace(data[i]) {
			return i + 1, data[start:i], nil
		}
	}
	if atEOF && len(data) > start {
		return len(data), data[start:], nil
	}
	return start, nil, nil
}

func ArrayIntToArrayString(arr []int) (r []string) {
	for _, v := range arr {
		r = append(r, fmt.Sprintf("%d", v))
	}
	return
}

func ArrayStringToArrayInt(arr []string) (r []int) {
	for _, v := range arr {
		i, e := strconv.ParseInt(v, 10, 64)
		if e != nil {
			panic(e)
		}
		r = append(r, int(i))
	}
	return
}

func IntArrayJoin(arr []int, sep string) string {
	return strings.Join(ArrayIntToArrayString(arr), sep)
}

func CharArrayJoin(arr []int) string {
	var r []string
	for _, v := range arr {
		r = append(r, fmt.Sprintf("%c", v))
	}
	return strings.Join(r, "")
}

func Sum(arr ...int) (r int) {
	for _, x := range arr {
		r += x
	}
	return
}

func Max(arr ...int) (r int) {
	r = arr[0]
	for _, x := range arr {
		if x > r {
			r = x
		}
	}
	return
}

func Min(arr ...int) (r int) {
	r = arr[0]
	for _, x := range arr {
		if x < r {
			r = x
		}
	}
	return
}

func Diff(a, b []int) []int {
	c := make([]int, len(a))
	for i := range a {
		c[i] = a[i] - b[i]
	}
	return c
}

func Fact(n int) int {
	if n <= 1 {
		return 1
	}
	r := 2
	for i := 3; i <= n; i++ {
		r *= i
	}
	return r
}

func FactBig(n int) *big.Int {
	if n <= 1 {
		return big.NewInt(1)
	}
	r := big.NewInt(2)
	for i := 3; i <= n; i++ {
		r = r.Mul(r, big.NewInt(int64(i)))
	}
	return r
}

func Rappend(a int, arr []int) []int {
	return append(arr, a)
}

func AllInt(vs []int, f func(int) bool) bool {
	for _, v := range vs {
		if !f(v) {
			return false
		}
	}
	return true
}

func Abs(n int) int {
	y := n >> 63
	return (n ^ y) - y
}

func ParseUInt(s string) uint64 {
	x, err := strconv.ParseUint(s, 10, 64)
	if err != nil {
		panic(err)
	}
	return x
}

func ParseInt(s string) int {
	return int(ParseUInt(s))
}

func Errln(s ...interface{}) {
	fmt.Fprintln(os.Stderr, s...)
}

func Errf(f string, s ...interface{}) {
	fmt.Fprintf(os.Stderr, f, s...)
}

func Pln(s ...interface{}) {
	fmt.Println(s...)
}

func Pf(f string, s ...interface{}) {
	fmt.Printf(f, s...)
}

func Spf(f string, s ...interface{}) string {
	return fmt.Sprintf(f, s...)
}

func RotateInt(a, b, max int) int {
	a += b
	if a < 0 {
		a = max + a
	} else if a >= max {
		a = max - a
	}
	return a
}

func MergeSorted(a, b, r []int, lessFunc func(int, int) bool) {
	var i, j, k int
	n, m := len(a), len(b)

	for ; i < n && j < m; k++ {
		if lessFunc(a[i], b[j]) {
			r[k] = a[i]
			i++
		} else {
			r[k] = b[j]
			j++
		}
	}

	for ; i < n; k++ {
		r[k] = a[i]
		i++
	}

	for ; j < m; k++ {
		r[k] = b[j]
		j++
	}
	return
}

func InsertSorted(a []int, b int, r []int, lessFunc func(int, int) bool) {
	var i, k int
	n := len(a)

	for ; i < n; k++ {
		if lessFunc(a[i], b) {
			r[k] = a[i]
			i++
		} else {
			r[k] = b
			k++
			break
		}
	}

	for ; i < n; k++ {
		r[k] = a[i]
		i++
	}

	if k < len(r) {
		r[k] = b
	}
	return
}

func Comb(a []int, n int, fn func([]int)) {
	length := uint(len(a))

	for i := 1; i < (1 << length); i++ {
		var t []int

		for j := uint(0); j < length; j++ {
			if (i>>j)&1 == 1 {
				t = append(t, a[j])
			}
		}
		if len(t) == n {
			fn(t)
		}
	}
}

func Perm(a []int, fn func([]int) bool) {
	r := make([]int, len(a))
	p := make([]int, len(a))
	for p[0] < len(p) {
		copy(r, a)
		for i, v := range p {
			r[i], r[i+v] = r[i+v], r[i]
		}
		if !fn(r) {
			return
		}
		for i := len(p) - 1; i >= 0; i-- {
			if i == 0 || p[i] < len(p)-i-1 {
				p[i]++
				break
			}
			p[i] = 0
		}
	}
}

func Gcd1(p, q int) int {
	if q == 0 {
		return p
	} else {
		return Gcd1(q, p%q)
	}
}

func Gcd2(a, b int) int {
	t := 0
	for b != 0 {
		t = a % b
		a = b
		b = t
	}
	return a
}

type Pq []int

func (p Pq) Len() int           { return len(p) }
func (p Pq) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }
func (p Pq) Less(i, j int) bool { return p[i] < p[j] }

func (p Pq) sink(k int) {
	N := p.Len()
	for 2*k < N {
		j := 2 * k
		if j < N && p.Less(j, j+1) {
			j++
		}
		if !p.Less(k, j) {
			break
		}
		p.Swap(k, j)
		k = j
	}
}

func (p Pq) swim(k int) {
	for k > 1 && p.Less(k/2, k) {
		p.Swap(k, k/2)
		k /= 2
	}
}

func (p Pq) Insert(x int) {
	p = append(p, x)
	p.swim(p.Len())
}

func (p Pq) DelMax() (r int) {
	r = p[1]
	p.Swap(1, p.Len())
	p.sink(1)
	return
}
