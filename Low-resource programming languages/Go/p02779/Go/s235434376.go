package main

import (
	"bufio"
	_ "container/heap"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	defer wtr.Flush()
	n := sc.nextInt()
	seen := make(map[string]interface{}, n)
	for i := 0; i < n; i++ {
		curr := sc.nextStr()
		if _, ok := seen[curr]; ok {
			fmt.Fprintln(wtr, "NO")
			return
		}
		seen[curr] = struct{}{}
	}
	fmt.Fprintln(wtr, "YES")
}

// I/O
type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &Scanner{sc}
}

func (s *Scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *Scanner) nextInt() int {
	i, e := strconv.Atoi(s.nextStr())
	if e != nil {
		panic(e)
	}
	return i
}
