package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Set struct {
	before int
	after  int
}

func main() {
	var n int
	s := wordScanner()
	scanInts(s, &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		scanInts(s, &a[i])
	}

	var bmax, amax int
	l := make([]Set, n+2)
	for i, m := range a {
		if m > bmax {
			bmax = m
		}
		if a[n-i-1] > amax {
			amax = a[n-i-1]
		}
		l[i+1].before = bmax
		l[n-i].after = amax
	}

	for i := range a {
		fmt.Println(max(l[i].before, l[i+2].after))
	}
}

func wordScanner() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func scanInts(s *bufio.Scanner, vals ...*int) {
	for i := range vals {
		s.Scan()
		n, _ := strconv.Atoi(s.Text())
		*vals[i] = n
	}
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
