// Substring

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func diffChars(s, t []rune) int {
	c := 0
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			c++
		}
	}
	return c
}

func doIt(s, t string) int {
	m := 99999999999
	for i := 0; i <= len(s)-len(t); i++ {
		ss := s[i : i+len(t)]
		d := diffChars([]rune(ss), []rune(t))
		if d < m {
			m = d
		}
	}

	return m
}

func nextInt(sc *bufio.Scanner) (int, error) {
	sc.Scan()
	t := sc.Text()
	return strconv.Atoi(t)
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	s := nextString(sc)
	t := nextString(sc)

	r := doIt(s, t)
	fmt.Println(r)
}
