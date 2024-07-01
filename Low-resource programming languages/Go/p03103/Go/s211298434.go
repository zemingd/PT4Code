package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n, m int
	s := wordScanner(100)
	scanInts(s, &n, &m)

	var b int
	a, set := make([]int, n), make(map[int]int, n)
	for i := 0; i < n; i++ {
		scanInts(s, &a[i], &b)
		set[a[i]] += b
	}

	sort.Ints(a)

	rest := m
	var ans int64
	for _, ai := range a {
		if d := set[ai] - rest; d >= 0 {
			ans += int64(ai * rest)
			break
		}
		rest -= set[ai]
		ans += int64(set[ai] * ai)
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

func scanInts(s *bufio.Scanner, vals ...*int) {
	for i := range vals {
		s.Scan()
		n, _ := strconv.Atoi(s.Text())
		*vals[i] = n
	}
}
