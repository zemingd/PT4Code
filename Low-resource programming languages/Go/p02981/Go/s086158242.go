package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := wordScanner()

	var n, a, b int
	scanInts(s, &n, &a, &b)

	fmt.Println(min(a*n, b))
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

func scanStrings(s *bufio.Scanner, vals ...*string) {
	for i := range vals {
		s.Scan()
		*vals[i] = s.Text()
	}
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
