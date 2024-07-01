package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	var t string
	s := wordScanner(100001)
	scanStrings(s, &t)

	fmt.Println(2 * min(strings.Count(t, "0"), strings.Count(t, "1")))
}

func min(x, y int) int {
	if x < y {
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

func scanStrings(s *bufio.Scanner, vals ...*string) {
	for i := range vals {
		s.Scan()
		*vals[i] = s.Text()
	}
}
