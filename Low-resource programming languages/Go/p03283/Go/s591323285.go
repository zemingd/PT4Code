package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
)

// const abcd = "abcdefghijklmnopqrstuvwxyz"
// const ABCD = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
// var dx = [...]int{0, 1, 1, 1, 0, -1, -1, -1, 0}
// var dy = [...]int{1, 1, 0, -1, -1, -1, 0, 1, 0}

var inf = math.MaxInt64

// var mod = 1000000007
var next = newScanner()

var (
	readString func() string
	stdout     *bufio.Writer
)

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}

// ---------------------------------------------------------

func main() {
	N := next.Int()
	M := next.Int()
	Q := next.Int()
	data := make([][]int, 510)
	for i := 0; i < len(data); i++ {
		data[i] = make([]int, 510)
	}
	for i := 0; i < M; i++ {
		l, r := next.Int(), next.Int()
		data[l][r]++
	}
	for i := 0; i < N+1; i++ {
		for j := 1; j < N+1; j++ {
			data[i][j] += data[i][j-1]
		}
	}
	for i := N; i > 0; i-- {
		for j := 1; j < N+1; j++ {
			data[i][j] += data[i+1][j]
		}
	}

	for i := 0; i < Q; i++ {
		p, q := next.Int(), next.Int()
		fmt.Println(data[p][q])
	}
}

// ---------------------------------------------------------

// Pair is...
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
	return p[i].b < p[i].b
}

// func (p Pairs) Less(i, j int) bool {
// 	if p[i].a < p[j].a {
// 		return true
// 	} else if p[i].a == p[j].a {
// 		return p[i].b < p[j].b
// 	}
// 	return false
// }

// ------int method-------------------------
func in(c, a, z int) bool {
	return c >= a && c < z
}
func out(c, a, z int) bool {
	return !in(c, a, z)
}
func btoi(b bool) int {
	if b {
		return 1
	}
	return 0
}
func itob(a int) bool {
	return a != 0
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
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func pro(a []int) int {
	r := a[0]
	for i := 1; i < len(a); i++ {
		r *= a[i]
	}
	return r
}

func fill(a []int, n int) []int {
	for i := range a {
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

//
//func abs(a int) int {
//	mask := a >> 63
//	return (a ^ mask) - mask
//}

func ceil(a, b int) int {
	if a%b != 0 {
		return 1
	}
	return 0
}

func printStrings(out []string) {
	for i := range out {
		fmt.Print(out[i])
		if i != len(out)-1 {
			fmt.Print(" ")
		}
	}
	fmt.Print("\n")
}
func printInts(out []int) {
	for i := range out {
		fmt.Print(out[i])
		if i != len(out)-1 {
			fmt.Print(" ")
		}
	}
	fmt.Print("\n")
}

// ---------- buffered scanner -----------------------------------------
type scanner struct {
	r   *bufio.Reader
	buf []byte
	p   int
}

func newScanner() *scanner {
	rdr := bufio.NewReaderSize(os.Stdin, 1024)
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
	// v, err := strconv.Atoi(s.next())
	v, err := strconv.ParseInt(s.next(), 10, 64)
	if err != nil {
		log.Fatal(err)
	}
	return int(v)
}
func (s *scanner) Ints(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = s.Int()
	}
	return r
}
func (s *scanner) Int64() int64 {
	v, err := strconv.ParseInt(s.next(), 10, 64)
	if err != nil {
		log.Fatal(err)
	}
	return v
}
func (s *scanner) Uint64() uint64 {
	v, err := strconv.ParseUint(s.next(), 10, 64)
	if err != nil {
		log.Fatal(err)
	}
	return v
}
func (s *scanner) Float64() float64 {
	v, err := strconv.ParseFloat(s.next(), 64)
	if err != nil {
		log.Fatal(err)
	}
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
		l, p, err := s.r.ReadLine()
		if err != nil {
			log.Fatal(err)
		}
		s.buf = append(s.buf, l...)
		if !p {
			break
		}
	}
}