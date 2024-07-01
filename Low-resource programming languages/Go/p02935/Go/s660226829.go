package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	s := wordScanner(100)
	n, v := scanNAndIntSlice(s)

	sort.Ints(v)

	ans := float64(v[0])
	for i := 1; i < n; i++ {
		ans = (ans + float64(v[i])) / 2.0
	}
	fmt.Println(ans)
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
