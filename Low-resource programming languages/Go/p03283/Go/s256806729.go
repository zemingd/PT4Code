package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"math"
	"os"
	"strconv"
)

// const abcd = "abcdefghijklmnopqrstuvwxyz"
// const ABCD = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var dx = [...]int{0, 1, 1, 1, 0, -1, -1, -1, 0}
var dy = [...]int{1, 1, 0, -1, -1, -1, 0, 1, 0}

var inf = math.MaxInt64

// var mod = 1000000007
// var next = newScanner()

// ---------------------------------------------------------
// func init() {
// 	log.SetFlags(log.Lshortfile)
// 	rand.Seed(time.Now().UnixNano())
// }

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
	for i := 0; i < lh; i++ {
		for j := 1; j < lw; j++ {
			cs.data[i][j] += cs.data[i][j-1]
		}
	}
	for i := 1; i < lh; i++ {
		for j := 0; j < lw; j++ {
			cs.data[i][j] += cs.data[i-1][j]
		}
	}
}

func (cs CumulateveSum2D) query(ar, ac, br, bc int) int {
	return cs.data[br][bc] - cs.data[ar][bc] - cs.data[br][ac] + cs.data[ar][ac]
}

func main() {
	N := readInt()
	M := readInt()
	Q := readInt()
	cs := NewCumulateveSum2D(N+1, N+1)
	for i := 0; i < M; i++ {
		l, r := readInt(), readInt()
		cs.add(l, r, 1)
	}
	cs.build()
	for i := 0; i < Q; i++ {
		p, q := readInt(), readInt()
		p--
		cnt := cs.query(p, p, q, q)
		fmt.Println(cnt)
	}
}

// import (
// 	"bufio"
// 	"fmt"
// 	"io"
// 	"os"
// 	"strconv"
// )

var (
	readString func() string
	stdout     *bufio.Writer
)

func init() {
	readString = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readIntSlice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readInt()
	}
	return b
}

func readLengthAndSlice() []int {
	n := readInt()
	return readIntSlice(n)
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}

func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int
// func main() {
// 	defer stdout.Flush()
//
// 	N := readInt()
// 	M := readInt()
// 	Q := readInt()
//
// 	f := make([][]int, 510)
// 	for i := range f {
// 		f[i] = make([]int, 510)
// 	}
// 	for i := 0; i < M; i++ {
// 		l := readInt()
// 		r := readInt()
// 		f[l][r]++
// 	}
//
// 	for i := 1; i <= N; i++ {
// 		for j := 1; j <= N; j++ {
// 			f[i][j] += f[i][j-1]
// 		}
// 	}
// 	for i := N; i > 0; i-- {
// 		for j := 1; j <= N; j++ {
// 			f[i][j] += f[i+1][j]
// 		}
// 	}
//
// 	for i := 0; i < Q; i++ {
// 		l := readInt()
// 		r := readInt()
// 		println(f[l][r])
// 	}
//
// }

// ---------------------------------------------------------
//
// // Pair is...
// type Pair struct {
// 	a, b int
// }
//
// // Pairs is sorted by []Pair struct
// type Pairs []Pair
//
// func (p Pairs) Len() int {
// 	return len(p)
// }
// func (p Pairs) Swap(i, j int) {
// 	p[i], p[j] = p[j], p[i]
// }
//
// func (p Pairs) Less(i, j int) bool {
// 	return p[i].b < p[i].b
// }
//
// // func (p Pairs) Less(i, j int) bool {
// // 	if p[i].a < p[j].a {
// // 		return true
// // 	} else if p[i].a == p[j].a {
// // 		return p[i].b < p[j].b
// // 	}
// // 	return false
// // }
//
// // ------int method-------------------------
// func in(c, a, z int) bool {
// 	return c >= a && c < z
// }
// func out(c, a, z int) bool {
// 	return !in(c, a, z)
// }
// func btoi(b bool) int {
// 	if b {
// 		return 1
// 	}
// 	return 0
// }
// func itob(a int) bool {
// 	return a != 0
// }
// func max(a ...int) int {
// 	r := a[0]
// 	for i := 0; i < len(a); i++ {
// 		if r < a[i] {
// 			r = a[i]
// 		}
// 	}
// 	return r
// }
// func min(a ...int) int {
// 	r := a[0]
// 	for i := 0; i < len(a); i++ {
// 		if r > a[i] {
// 			r = a[i]
// 		}
// 	}
// 	return r
// }
// func sum(a []int) (r int) {
// 	for i := range a {
// 		r += a[i]
// 	}
// 	return r
// }
// func pro(a []int) int {
// 	r := a[0]
// 	for i := 1; i < len(a); i++ {
// 		r *= a[i]
// 	}
// 	return r
// }
//
// func fill(a []int, n int) []int {
// 	for i := range a {
// 		a[i] = n
// 	}
// 	return a
// }
// func minmax(a, b int) (int, int) {
// 	if a > b {
// 		return b, a
// 	}
// 	return a, b
// }
//
// func abs(a int) int {
// 	if a < 0 {
// 		return -a
// 	}
// 	return a
// }
//
// //
// //func abs(a int) int {
// //	mask := a >> 63
// //	return (a ^ mask) - mask
// //}
//
// func ceil(a, b int) int {
// 	if a%b != 0 {
// 		return 1
// 	}
// 	return 0
// }
//
// func printStrings(out []string) {
// 	for i := range out {
// 		fmt.Print(out[i])
// 		if i != len(out)-1 {
// 			fmt.Print(" ")
// 		}
// 	}
// 	fmt.Print("\n")
// }
// func printInts(out []int) {
// 	for i := range out {
// 		fmt.Print(out[i])
// 		if i != len(out)-1 {
// 			fmt.Print(" ")
// 		}
// 	}
// 	fmt.Print("\n")
// }
//
// // ---------- buffered scanner -----------------------------------------
// type scanner struct {
// 	r   *bufio.Reader
// 	buf []byte
// 	p   int
// }
//
// func newScanner() *scanner {
// 	rdr := bufio.NewReaderSize(os.Stdin, 1024)
// 	return &scanner{r: rdr}
// }
// func (s *scanner) next() string {
// 	s.pre()
// 	start := s.p
// 	for ; s.p < len(s.buf); s.p++ {
// 		if s.buf[s.p] == ' ' {
// 			break
// 		}
// 	}
// 	result := string(s.buf[start:s.p])
// 	s.p++
// 	return result
// }
// func (s *scanner) Line() string {
// 	s.pre()
// 	start := s.p
// 	s.p = len(s.buf)
// 	return string(s.buf[start:])
// }
// func (s *scanner) String() string {
// 	return s.next()
// }
// func (s *scanner) Int() int {
// 	// v, err := strconv.Atoi(s.next())
// 	v, err := strconv.ParseInt(s.next(), 10, 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return int(v)
// }
// func (s *scanner) Ints(n int) []int {
// 	r := make([]int, n)
// 	for i := 0; i < n; i++ {
// 		r[i] = s.Int()
// 	}
// 	return r
// }
// func (s *scanner) Int64() int64 {
// 	v, err := strconv.ParseInt(s.next(), 10, 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return v
// }
// func (s *scanner) Uint64() uint64 {
// 	v, err := strconv.ParseUint(s.next(), 10, 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return v
// }
// func (s *scanner) Float64() float64 {
// 	v, err := strconv.ParseFloat(s.next(), 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return v
// }
// func (s *scanner) pre() {
// 	if s.p >= len(s.buf) {
// 		s.readLine()
// 		s.p = 0
// 	}
// }
// func (s *scanner) readLine() {
// 	s.buf = make([]byte, 0)
// 	for {
// 		l, p, err := s.r.ReadLine()
// 		if err != nil {
// 			log.Fatal(err)
// 		}
// 		s.buf = append(s.buf, l...)
// 		if !p {
// 			break
// 		}
// 	}
// }