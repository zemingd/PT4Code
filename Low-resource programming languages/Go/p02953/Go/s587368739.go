package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := wordScanner()
	n, h := scanNAndIntSlice(s)

	for i := n - 1; i > 0; i-- {
		if h[i] == h[i-1]-1 {
			h[i-1]--
		} else if h[i] < h[i-1] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}

func wordScanner() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
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
