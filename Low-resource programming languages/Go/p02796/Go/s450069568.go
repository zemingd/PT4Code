package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type robot struct {
	a, b int
}

type robots []robot

func (rs robots) Len() int           { return len(rs) }
func (rs robots) Swap(i, j int)      { rs[i], rs[j] = rs[j], rs[i] }
func (rs robots) Less(i, j int) bool { return rs[i].b < rs[j].b }

func solve() {
	n := getInt()
	rs := make(robots, n)
	for i := range rs {
		x, l := getInt(), getInt()
		rs[i].a = x - l
		rs[i].b = x + l
	}
	sort.Sort(rs)

	ans := n
	now := -inf
	for _, r := range rs {
		if r.a < now {
			ans--
		} else {
			now = r.b
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
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() (ret int) {
	sc.Scan()
	ret, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return
}

func getIntSlice(n int) (ret []int) {
	ret = make([]int, n)
	for i := range ret {
		ret[i] = getInt()
	}
	return
}

func getString() (ret string) {
	sc.Scan()
	ret = sc.Text()
	return
}

func getRunes() (ret []rune) {
	ret = []rune(getString())
	return
}
