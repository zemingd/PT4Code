// by syu
package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	R := []int{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
	in := NewScanner(os.Stdin, 0)
	N, K := in.Int(), in.Int()
	D := in.ArrayInt(K)
	for _, v := range D {
		if v <= 9 {
			R[v] = 0
		}
	}

	ans := N
	ok := false
	for !ok {
		ok = find(ans, R)
		if ok {
			break
		}
		ans += 1
	}

	fmt.Println(ans)
}

func find(a int, r []int) bool {
	if r[a%10] == 0 {
		return false
	} else if a < 10 {
		return true
	}
	return find(a/10, r)
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
	for isSpace(data[start]) {
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

func Sum(arr ...int) (sum int) {
	for _, x := range arr {
		sum += x
	}
	return
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
