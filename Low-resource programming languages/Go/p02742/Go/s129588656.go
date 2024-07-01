package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	// buf := make([]byte, 10000)
	// scanner.Buffer(buf, 1000000)
	return scanner
}

func scanInt(s *bufio.Scanner) int {
	if s.Scan() {
		t := s.Text()
		if v, err := strconv.Atoi(t); err == nil {
			return v
		}
		panic(fmt.Sprintln("Could't scan int from input", t))
	}
	panic(s.Err())
}

func scanInts(s *bufio.Scanner, n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt(s)
	}
	return a
}

func main() {
	sc := newScanner()
	h, w := scanInt(sc), scanInt(sc)
	if h == 1 || w == 1 {
		fmt.Println(1)
		return
	}
	s := h * w
	fmt.Println(s/2 + s&1)
}
