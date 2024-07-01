package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	s := wordScanner(100001)
	s.Scan()
	str := s.Text()

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

func wordScanner(n int) *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	buf := make([]byte, n)
	s.Buffer(buf, n)
	return s
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
