package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, m := readI(), readI()
	uf := newUF(n)
	for i := 0; i < m; i++ {
		uf.unite(readI()-1, readI()-1)
	}
	fmt.Println(-min(uf.d))
}

func min(a []int) int {
	l := len(a)
	m := a[0]
	for i := 1; i < l; i++ {
		if a[i] < m {
			m = a[i]
		}
	}
	return m
}

//Union-Find
type unionFind struct {
	d []int
}

func newUF(n int) *unionFind {
	d := make([]int, n)
	for i := range d {
		d[i] = -1
	}
	u := unionFind{d}
	return &u
}

func (u *unionFind) root(a int) int {
	if u.d[a] < 0 {
		return a
	}
	u.d[a] = u.root(u.d[a])
	return u.d[a]
}

func (u *unionFind) unite(a, b int) {
	ar, br := u.root(a), u.root(b)
	if ar == br {
		return
	}
	if -u.d[ar] < -u.d[br] {
		ar, br = br, ar
	}
	u.d[ar] += u.d[br]
	u.d[br] = ar
}

func (u *unionFind) isSame(a, b int) bool {
	return u.root(a) == u.root(b)
}

func (u *unionFind) size(a int) int {
	return -u.d[u.root(a)]
}

/*-----------Input utils-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	if len(os.Args) >= 2 {
		if os.Args[1] == "debug" {
			debug()
		}
	}
	const buf = 200100
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, buf), buf)
}

func debug() {
	testFile, err := os.Open("./test/sample-1.in")
	if err != nil {
		fmt.Fprintln(os.Stderr, "There is no testfile.")
		os.Exit(1)
	}
	sc = bufio.NewScanner(testFile)
}

func readS() string {
	sc.Scan()
	return sc.Text()
}

func readR() []rune {
	return []rune(readS())
}

func readI() int {
	i, _ := strconv.Atoi(readS())
	return i
}

func readF() float64 {
	f, _ := strconv.ParseFloat(readS(), 64)
	return f
}
