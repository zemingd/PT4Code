package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := wordScanner(100)
	l := scanIntSlice(s, 6)
	fmt.Println(4 + ceilDiv(l[0], min(l[1:])))
}

func ceilDiv(x, y int) int {
	if x%y > 0 {
		return x/y + 1
	}
	return x / y
}

func min(l []int) int {
	r := l[0]
	for _, n := range l[1:] {
		if n < r {
			r = n
		}
	}
	return r
}

func wordScanner(n int) *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	b := make([]byte, n)
	s.Buffer(b, n)
	return s
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
