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
	k := sc.nextInt()
	a := []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	idx := 0
	for len(a) <= k {
		now := a[idx]
		if (now)%10 != 0 {
			a = append(a, 10*now+now%10-1)
		}
		a = append(a, 10*now+now%10)
		if now%10 != 9 {
			a = append(a, 10*now+now%10+1)
		}
		idx++
	}
	fmt.Println(a[k-1])
}

func check(x int) bool {
	if x == 0 {
		return false
	}

	if x/10 == 0 {
		return true
	}

	s := strconv.Itoa(x)
	for i := 0; i < len(s)-1; i++ {
		if abs(int(s[i])-int(s[i+1])) > 1 {
			return false
		}
	}
	return true
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

func dump(value ...interface{}) {
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
