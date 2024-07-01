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
		v, err := strconv.Atoi(t)
		if err == nil {
			return v
		}
		panic(err)
	} else {
		panic(s.Err())
	}
}

func scanString(s *bufio.Scanner) string {
	if s.Scan() {
		return s.Text()
	}
	panic(s.Err())
}

func main() {
	sc := newScanner()
	n, m := scanInt(sc), scanInt(sc)

	if n == m {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
