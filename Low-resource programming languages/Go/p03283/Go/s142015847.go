package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"math/rand"
	"os"
	"strconv"
	"time"
)

// const abcd = "abcdefghijklmnopqrstuvwxyz"
// const ABCD = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var dx = [...]int{0, 1, 1, 1, 0, -1, -1, -1, 0}
var dy = [...]int{1, 1, 0, -1, -1, -1, 0, 1, 0}

var inf = math.MaxInt64

// var mod = 1000000007
var next = newScanner()

// ---------------------------------------------------------
func init() {
	log.SetFlags(log.Lshortfile)
	rand.Seed(time.Now().UnixNano())
}

type CumulateveSum2D struct {
	data [][]int
}

func NewCumulateveSum2D(H int, W int) CumulateveSum2D {
	var cs CumulateveSum2D
	cs.data = make([][]int, H+1)
	for i := 0; i < len(cs.data); i++ {
		cs.data[i] = make([]int, W+1)
	}
	return cs
}

func (cs *CumulateveSum2D) add(r, c, z int) {
	if r > len(cs.data) {
		log.Fatalf("r(%d) is over H(%d)\n", r, len(cs.data))
	}
	if c > len(cs.data[0]) {
		log.Fatalf("c(%d) is over W(%d)\n", c, len(cs.data[0]))
	}
	cs.data[r][c] += z
}

func (cs *CumulateveSum2D) build() {
	lh := len(cs.data)
	lw := len(cs.data[0])
	// for i := 1; i < H; i++ {
	// 	for j := 1; j < W; j++ {
	// 		cs.data[i][j] += cs.data[i][j-1]
	// 		cs.data[i][j] += cs.data[i-1][j]
	// 		cs.data[i][j] -= cs.data[i-1][j-1]
	// 	}
	// }
	for i := 0; i < lh; i++ {
		for j := 1; j < lw; j++ {
			cs.data[i][j] += cs.data[i][j-1]
		}
	}
	for j := 0; j < lw; j++ {
		for i := lh - 1; i >= 1; i-- {
			cs.data[i-1][j] += cs.data[i][j]
		}
	}
}

func (cs CumulateveSum2D) query(ar, ac, br, bc int) int {
	return cs.data[br][bc] - cs.data[ar][bc] - cs.data[br][ac] + cs.data[ar][ac]
}

func main() {
	N := next.Int()
	M := next.Int()
	Q := next.Int()
	cs := NewCumulateveSum2D(N+1, N+1)
	for i := 0; i < M; i++ {
		l, r := next.Int(), next.Int()
		cs.add(l, r, 1)
	}
	cs.build()
	for i := 0; i < Q; i++ {
		p, q := next.Int(), next.Int()
		p--
		cnt := cs.query(p, p, q, q)
		fmt.Println(cnt)
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
	rdr := bufio.NewReaderSize(os.Stdin, 500000)
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
	v, err := strconv.Atoi(s.next())
	if err != nil {
		log.Fatal(err)
	}
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