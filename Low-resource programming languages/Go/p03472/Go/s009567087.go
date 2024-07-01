package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"
)

// const abcd = "abcdefghijklmnopqrstuvwxyz"
// const ABCD = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
// var dx = [...]int{0, 1, 0, -1, 1, -1, -1, 1}
// var dy = [...]int{1, 0, -1, 0, 1, 1, -1, -1}
// var inf int = 1e13

// var mod = 1000000007
var next = newScanner()

// ---------------------------------------------------------

func main() {
	log.SetFlags(log.Lshortfile)
	N := next.Int()
	H := next.Int()
	a := make([]int, N)
	b := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = next.Int()
		b[i] = next.Int()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	amax := max(a...)
	var ans int
	for i := 0; i < N; i++ {
		if b[i] <= amax {
			break
		}
		H -= b[i]
		ans++
		if H <= 0 {
			fmt.Println(ans)
			return
		}
	}
	fmt.Println(ans + (H+amax-1)/amax)
}

// ---------------------------------------------------------

// // Pair is...
type Pair struct {
	a, b int
}

// Pairs is sorted by []Pair struct
type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}
func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Pairs) Less(i, j int) bool {
	return p[i].a > p[j].a
}

// // Pair is...
type Tri struct {
	a, b, c int
}

// Pairs is sorted by []Pair struct
type Tris []Tri

func (p Tris) Len() int {
	return len(p)
}
func (p Tris) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Tris) Less(i, j int) bool {
	if p[i].a > p[j].a {
		return true
	} else if p[i].a == p[j].a {
		return p[i].b > p[j].b
	}
	return false
}

// ------int method-------------------------
func in(c, a, z int) bool {
	return c >= a && c < z
}
func btoi(b bool) int {
	if b {
		return 1
	}
	return 0
}
func itob(a int) bool {
	if a == 0 {
		return false
	}
	return true
}
func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) int {
	r := 0
	for i := 0; i < len(a); i++ {
		r += a[i]
	}
	return r
}
func pro(a []int) int {
	r := 1
	for i := 0; i < len(a); i++ {
		r *= a[i]
	}
	return r
}
func fill(a []int, n int) []int {
	for i := 0; i < len(a); i++ {
		a[i] = n
	}
	return a
}
func minmax(a, b int) (int, int) {
	if a > b {
		return b, a
	}
	return a, b
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

// ---------- buffered scanner -----------------------------------------
func iferr(err error) {
	if err != nil {
		panic(err)
	}
}

type scanner struct {
	r   *bufio.Reader
	buf []byte
	p   int
}

func newScanner() *scanner {
	rdr := bufio.NewReaderSize(os.Stdin, 10000)
	return &scanner{r: rdr}
}
func (s *scanner) next() string {
	s.pre()
	start := s.p
	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			break
		}
	}
	result := string(s.buf[start:s.p])
	s.p++
	return result
}
func (s *scanner) Line() string {
	s.pre()
	start := s.p
	s.p = len(s.buf)
	return string(s.buf[start:])
}
func (s *scanner) String() string {
	return s.next()
}
func (s *scanner) Int() int {
	v, e := strconv.Atoi(s.next())
	iferr(e)
	return v
}
func (s *scanner) Ints(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = s.Int()
	}
	return r
}
func (s *scanner) Int64() int64 {
	v, e := strconv.ParseInt(s.next(), 10, 64)
	iferr(e)
	return v
}
func (s *scanner) Uint64() uint64 {
	v, e := strconv.ParseUint(s.next(), 10, 64)
	iferr(e)
	return v
}
func (s *scanner) Float64() float64 {
	v, e := strconv.ParseFloat(s.next(), 64)
	iferr(e)
	return v
}
func (s *scanner) pre() {
	if s.p >= len(s.buf) {
		s.readLine()
		s.p = 0
	}
}
func (s *scanner) readLine() {
	s.buf = make([]byte, 0)
	for {
		l, p, e := s.r.ReadLine()
		iferr(e)
		s.buf = append(s.buf, l...)
		if !p {
			break
		}
	}
}
