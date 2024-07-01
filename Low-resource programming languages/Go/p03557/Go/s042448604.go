package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	sc := NewScanner()
	aa := sc.nextIntSlice(n)
	bb := sc.nextIntSlice(n)
	cc := sc.nextIntSlice(n)

	sort.Ints(aa)
	sort.Ints(cc)

	sum := 0
	for _, b := range bb {
		i := search(aa, b)
		j := search(cc, b+1)
		sum += i * (n - j)
	}

	fmt.Println(sum)
}

func search(a []int, t int) int {
	low := 0
	high := len(a) - 1
	for low <= high {
		mid := (low + high) / 2
		if t <= a[mid] {
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	return low
}

// Scanner .
type Scanner struct {
	sc *bufio.Scanner
}

// NewScanner .
func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &Scanner{sc}
}

func (s *Scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *Scanner) nextInt() int {
	i, e := strconv.Atoi(s.nextStr())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *Scanner) nextRuneSlice() []rune {
	return []rune(s.nextStr())
}

func (s *Scanner) nextIntSlice(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.nextInt()
	}
	return res
}
