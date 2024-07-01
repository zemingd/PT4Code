package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
	"unsafe"
)

const mod int = 1e9 + 7

func main() {
	// N := sc.nextInt()
	// An := sc.nextInts()
	// for i := 1; i < N; i++ {
	// 	fmt.Println((1 << An[i-1]) ^ (1 << An[i]))
	// }
	// fmt.Println((1 << uint(3)) ^ (1 << uint(5)))
	// fmt.Println((1 << uint(1)) ^ (1 << uint(1+1)))
	// fmt.Println((1 << uint(2)) ^ (1 << uint(2+1)))
	// fmt.Println((1 << uint(3)) ^ (1 << uint(3+1)))
	// fmt.Println(modPow(2, 5, 100000000))

	// for i := 0; i < 10; i++ {
	// 	fmt.Println((1 << uint(i)) ^ (1 << uint(i+1)))
	// }

	N := sc.nextInt()
	An := sc.nextInts()
	allZeros := make([]int, 60)
	allOnes := make([]int, 60)

	for i := 0; i < N; i++ {
		for j := 0; j < 60; j++ {
			if (An[i])&(1<<uint(j)) == 0 {
				allZeros[j]++
			} else {
				allOnes[j]++
			}
		}
	}
	// fmt.Println(allZeros)
	// fmt.Println(allOnes)
	var ans int
	for j := 0; j < 60; j++ {
		ans += ((1 << uint(j)) % mod) * (allZeros[j]) * (allOnes[j] % mod)
		ans %= mod
	}
	fmt.Println(ans)
}

func modPow(a, n, mod int) int {
	res := 1
	for n > 0 {
		if (n & 1) > 0 {
			res = res * a % mod
		}
		a = a * a % mod
		n >>= 1
	}
	return res
}

var (
	sc scanner
)

func init() {
	sc = scanner{
		buf: make([]string, 0, 0),
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
	rbuf := make([]byte, 0, 0)
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
	for i := range s.buf {
		res[i], _ = strconv.Atoi(s.buf[i])
	}
	s.resetCur()
	return res
}
func (s *scanner) nextFloat() float64 {
	if s.cur == 0 {
		s.readln()
	}
	res, _ := strconv.ParseFloat(s.buf[s.cur],
		64)
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}
func (s *scanner) nextFloats() []float64 {
	s.readln()
	res := make([]float64, len(s.buf))
	for i := range s.buf {
		res[i], _ = strconv.ParseFloat(s.buf[i],
			64)
	}
	s.resetCur()
	return res
}
func digits(x int) int {
	return len(strconv.Itoa(x))
}
func powInt(x, p int) (result int) {
	result = 1
	for i := 0; i < p; i++ {
		result *= x
	}
	return
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
func varDump(value ...interface{}) {
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

// Pair a
type Pair struct {
	first  int
	second int
}

// Queue a
type Queue struct {
	v []Pair
}

// Push for queue
func (q *Queue) Push(v Pair) {
	q.v = append(q.v, v)
}

// Pop for queue
func (q *Queue) Pop() Pair {
	r := q.v[0]
	q.v = q.v[1:]
	return r
}

// Front for queue
func (q Queue) Front() Pair {
	return q.v[0]
}

// Empty return true if empty
func (q Queue) Empty() bool {
	return len(q.v) == 0
}
