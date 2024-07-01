//problem_b.go

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	//"strings"
)

const (
	mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

// -----------------------------------------

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getIntSlice(n int) []int {
	ns := []int{}
	for i := 0; i < n; i++ {
		ns = append(ns, getInt())
	}
	return ns
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func getStringSlice(n int) []string {
	ss := []string{}
	for i := 0; i < n; i++ {
		ss = append(ss, getString())
	}
	return ss
}

func sortIntSlice(ns []int) []int {
	sort.Sort(sort.IntSlice(ns))
	return ns
}

func rsortIntSlice(ns []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(ns)))
	return ns
}

// -----------------------------------------

func solve() {
	n, k := getInt(), getInt()

	i := 1
	d := 0

	for n > i {
		i *= k
		d++
	}

	fmt.Fprintln(wr, d)
}

// -----------------------------------------

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}
