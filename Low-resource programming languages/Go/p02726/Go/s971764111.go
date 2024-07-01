package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
	"unsafe"
)

var (
	sc scanner
)

func main() {
	n, x, y := sc.nextInt(), sc.nextInt(), sc.nextInt()
	g := make([][]int, n+1)
	for i, _ := range g {
		g[i] = make([]int, n+1)
	}
	for i := 0; i < n+1; i++ {
		for j := 0; j < n+1; j++ {
			g[i][j] = 1 << 29
		}
	}
	for i := 1; i < n+1; i++ {
		for j := 1; j < n+1; j++ {
			if j == i+1 {
				g[i][j], g[j][i] = 1, 1
			}
		}
	}
	g[x][y], g[y][x] = 1, 1

	g = warshallFloyd(g)
	for k := 1; k <= n-1; k++ {
		cnt := 0
		for i := 1; i < n+1; i++ {
			for j := i + 1; j < n+1; j++ {
				if g[i][j] == k {
					cnt++
				}
			}
		}
		fmt.Println(cnt)
	}
}

// g := Graph
func warshallFloyd(g [][]int) [][]int {
	n := len(g)
	for k := 0; k < n; k++ {
		for i := 0; i < n; i++ {
			for j := 0; j < n; j++ {
				if g[i][j] > g[i][k]+g[k][j] {
					g[i][j] = g[i][k] + g[k][j]
				}
			}
		}
	}
	return g
}

/* template functions */

func init() {
	sc = scanner{
		buf: make([]string, 0, 10000),
		cur: 0,
		r:   bufio.NewReader(os.Stdin),
	}
}

type scanner struct {
	buf []string
	cur int
	r   *bufio.Reader
}

func (s *scanner) readln() {
	rbuf := make([]byte, 0, 100)
	for {
		line, prefix, err := s.r.ReadLine()
		if err != nil {
			panic(err)
		}
		rbuf = append(rbuf, line...)
		if prefix == false {
			break
		}
	}
	s.cur = 0
	s.buf = strings.Split(*(*string)(unsafe.Pointer(&rbuf)), " ")
}

func (s *scanner) isFull() bool {
	if s.cur == len(s.buf) {
		return true
	}
	return false
}

func (s *scanner) resetCur() {
	s.cur = 0
}

func (s *scanner) next() string {
	if s.cur == 0 {
		s.readln()
	}
	res := s.buf[s.cur]
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}

func (s *scanner) nexts() []string {
	s.readln()
	s.resetCur()
	return s.buf
}

func (s *scanner) nextByte() byte {
	if s.cur == 0 {
		s.readln()
	}
	res := s.buf[s.cur][0]
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}

func (s *scanner) nextInt() int {
	if s.cur == 0 {
		s.readln()
	}
	res, _ := strconv.Atoi(s.buf[s.cur])
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}

func (s *scanner) nextInts() []int {
	s.readln()
	res := make([]int, len(s.buf))
	for i, _ := range s.buf {
		res[i], _ = strconv.Atoi(s.buf[i])
	}
	s.resetCur()
	return res
}

func (s *scanner) nextFloat() float64 {
	if s.cur == 0 {
		s.readln()
	}
	res, _ := strconv.ParseFloat(s.buf[s.cur], 64)
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}

func (s *scanner) nextFloats() []float64 {
	s.readln()
	res := make([]float64, len(s.buf))
	for i, _ := range s.buf {
		res[i], _ = strconv.ParseFloat(s.buf[i], 64)
	}
	s.resetCur()
	return res
}

func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}

// 切りあげ
func ceil(x float64) int {
	return int(math.Ceil(float64(x)))
}

// x^y % MOD
func pow(x, y int) (res int) {
	res = 1
	M := 1000000000 + 7
	for y > 0 {
		if (y & 1) == 1 {
			res = (res * x) % M
		}
		x = (x * x) % M
		y = y >> 1
	}
	return res
}

// lower_bound uses binary search to searches for x in a sorted slice of ints and returns the index as specified by Search.
// The return value is the index to insert x if x is not present (it could be len(a)). The slice must be sorted in ascending order.
//
// Searchable
// idx := lower_bound([]int{-199, -1, 0, 2, 4, 67, 100, 8435}, 60)
// => idx = 5
//
// No present
// idx := lower_bound([]int{-199, -1, 0, 2, 4, 67, 100, 8435}, 10000)
// => idx = 8

func lower_bound(a []int, x int) int {
	return sort.SearchInts(a, x)
}

func var_dump(value ...interface{}) {
	for _, v := range value {
		fmt.Fprintf(os.Stderr, "%#v\n", v)
	}
}

func yes() {
	fmt.Println("Yes")
}

func no() {
	fmt.Println("No")
}
