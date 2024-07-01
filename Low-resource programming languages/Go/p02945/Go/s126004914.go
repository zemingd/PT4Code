package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var a, b int
	s := wordScanner(100)
	scanInts(s, &a, &b)

	fmt.Println(max(a+b, max(a*b, a-b)))
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
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
