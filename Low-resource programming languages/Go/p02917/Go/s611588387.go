package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func wordScanner(n int) *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	b := make([]byte, n)
	s.Buffer(b, n)
	return s
}

func scanNAndIntSlice(s *bufio.Scanner) (int, []int) {
	s.Scan()
	n, _ := strconv.Atoi(s.Text())
	return n, scanIntSlice(s, n)
}

func scanIntSlice(s *bufio.Scanner, n int) []int {
	vals := make([]int, n)
	for i := range vals {
		s.Scan()
		m, _ := strconv.Atoi(s.Text())
		vals[i] = m
	}
	return vals
}

func min(l ...int) int {
	r := l[0]
	for _, n := range l {
		if n < r {
			r = n
		}
	}
	return r
}

func main() {
	s := wordScanner(100)
	n, b := scanNAndIntSlice(s)
	b = b[:len(b)-1]

	a := b[0]
	for i := 1; i < n-1; i++ {
		a += min(b[i-1], b[i])
	}
	a += b[len(b)-1]

	fmt.Println(a)
}
