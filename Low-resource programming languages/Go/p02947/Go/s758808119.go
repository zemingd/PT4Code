package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n int
	var t string
	s := wordScanner(100)
	scanInts(s, &n)
	l := make(map[string]int, n)
	for i := 0; i < n; i++ {
		scanStrings(s, &t)
		l[sorted(t)]++
	}

	var c int
	for _, val := range l {
		for i := 1; i < val; i++ {
			c += i
		}
	}

	fmt.Println(c)
}

type RuneSlice []rune

func (p RuneSlice) Len() int           { return len(p) }
func (p RuneSlice) Less(i, j int) bool { return p[i] < p[j] }
func (p RuneSlice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func sorted(s string) string {
	runes := []rune(s)
	sort.Sort(RuneSlice(runes))
	return string(runes)
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

func scanStrings(s *bufio.Scanner, vals ...*string) {
	for i := range vals {
		s.Scan()
		*vals[i] = s.Text()
	}
}
