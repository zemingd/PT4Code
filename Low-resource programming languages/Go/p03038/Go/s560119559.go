package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type pair struct{ f, s int }
type ps []pair

func (a ps) Len() int           { return len(a) }
func (a ps) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a ps) Less(i, j int) bool { return a[i].f > a[j].f }

func solve() {
	n, m := getInt(), getInt()
	mp := make(map[int]int)
	for i := 0; i < n; i++ {
		a := getInt()
		mp[a]++
	}

	for i := 0; i < m; i++ {
		b, c := getInt(), getInt()
		mp[c] += b
	}

	s := make([]pair, 0, len(mp))
	for k, v := range mp {
		s = append(s, pair{k, v})
	}
	sort.Sort(ps(s))

	ans := 0
	for _, p := range s {
		if p.s >= n {
			ans += p.f * n
			break
		} else {
			ans += p.f * p.s
			n -= p.s
		}
	}
	fmt.Fprintln(wr, ans)
}

// -----------------------------------------

const (
	inf = 1 << 60
	// mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func main() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}

func getRunes() []rune {
	return []rune(getString())
}
