// by syu
package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"strconv"
	"strings"
)

var in = NewScanner(os.Stdin, 0)

func main() {
	N := in.Int()

	count, i := 0, 1
	switch {
	case N > 900000009:
		count, i = 26484, N|1
	case N > 700000007:
		count, i = 20434, 700000007
	case N > 500000005:
		count, i = 14384, 500000005
	case N > 300000003:
		count, i = 8334, 300000003
	case N > 100000001:
		count, i = 8334, 100000001
	case N > 90000009:
		count, i = 8334, 90000009
	case N > 70000007:
		count, i = 6402, 70000007
	case N > 50000005:
		count, i = 4470, 50000005
	case N > 30000003:
		count, i = 2538, 30000003
	case N > 10000001:
		count, i = 2538, 10000001
	}

	for ; i <= N; i += 2 {
		if isAll753(i) {
			count++
		}
	}
	fmt.Println(count)
}

func isAll753(i int) bool {
	mask := 0
	for i > 0 {
		mask |= 1 << uint32(i%10)
		i /= 10
	}
	return mask == 0xa8
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

func Sum(arr ...int) (sum int) {
	for _, x := range arr {
		sum += x
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
