package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func solve(sc *scanner, wr *bufio.Writer) {
	n := sc.getInt()
	as := sc.getInts(n)
	sort.Ints(as)

	ans := as[n-1]
	for i := (n + 1) / 2; i < n-1; i++ {
		ans += as[i] * 2
	}
	if n%2 == 1 {
		ans += as[n/2]
	}

	fmt.Fprintln(wr, ans)
}

func main() {
	sc := newScanner()
	wr := bufio.NewWriter(os.Stdout)
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)

	solve(sc, wr)
	wr.Flush()
}

// input ------------------------
type scanner struct {
	*bufio.Scanner
}

func newScanner() *scanner {
	sc := bufio.NewScanner(os.Stdin)
	return &scanner{sc}
}
func (sc *scanner) getInt() int {
	sc.Scan()
	ret, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return ret
}
func (sc *scanner) getInt2() (int, int) {
	return sc.getInt(), sc.getInt()
}
func (sc *scanner) getInt3() (int, int, int) {
	return sc.getInt(), sc.getInt(), sc.getInt()
}
func (sc *scanner) getInt4() (int, int, int, int) {
	return sc.getInt(), sc.getInt(), sc.getInt(), sc.getInt()
}
func (sc *scanner) getInts(n int) []int {
	ret := make([]int, n)
	for i := range ret {
		ret[i] = sc.getInt()
	}
	return ret
}
func (sc *scanner) getString() string {
	sc.Scan()
	return sc.Text()
}
func (sc *scanner) getRunes() []rune {
	return []rune(sc.getString())
}
func (sc *scanner) getFloat() float64 {
	sc.Scan()
	ret, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return ret
}
func (sc *scanner) getFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := range ret {
		ret[i] = sc.getFloat()
	}
	return ret
}

// math ----------------------------
func sum(ns ...int) int {
	var sum int
	for _, n := range ns {
		sum += n
	}
	return sum
}

func max(ns ...int) int {
	max := ns[0]
	for i := 1; i < len(ns); i++ {
		if max < ns[i] {
			max = ns[i]
		}
	}
	return max
}

func min(ns ...int) int {
	min := ns[0]
	for i := 1; i < len(ns); i++ {
		if min > ns[i] {
			min = ns[i]
		}
	}
	return min
}

func pow(a, b int) int {
	ret := 1
	for b > 0 {
		if b&1 > 0 {
			ret = ret * a
		}
		a = a * a
		b >>= 1
	}
	return ret
}
