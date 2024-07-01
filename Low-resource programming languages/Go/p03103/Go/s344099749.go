package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return sc
}

func main() {
	sc = initScanner(os.Stdin)
	fmt.Println(resolve(parseProblem()))
}

type pair struct{ f, s int }

type pairs []pair

func (p pairs) Len() int {
	return len(p)
}

func (p pairs) Less(i, j int) bool {
	return p[i].f < p[j].f
}

func (p pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func parseProblem() int {
	n := scanInt(sc)
	m := scanInt(sc)
	ps := make([]pair, n)
	for i := 0; i < n; i++ {
		a := scanInt(sc)
		b := scanInt(sc)
		ps[i] = pair{f: a, s: b}
	}
	sort.Sort(pairs(ps))
	rest := m
	budget := 0
	for _, store := range ps {
		if store.s <= rest {
			budget += store.f * store.s
			rest -= store.s
		} else {
			budget += store.f * rest
			rest = 0
			break
		}
	}
	return budget
}

func resolve(n int) int {
	return n
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
