package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := wordScanner(100)
	_, a := scanNAndIntSlice(s)

	var t float64
	for _, ai := range a {
		b := 1.0 / float64(ai)
		t += b
	}

	fmt.Println(1.0 / t)
}

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
