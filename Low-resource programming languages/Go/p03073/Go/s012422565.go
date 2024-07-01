package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	var str string
	s := wordScanner()
	scanStrings(s, &str)

	sample := strings.Repeat("10", 50001)

	fmt.Println(min(sub(str, sample), sub(str, sample[1:])))
}

func sub(s, t string) int {
	c := 0
	for i := range s {
		if s[i] != t[i] {
			c++
		}
	}
	return c
}

func wordScanner() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
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
