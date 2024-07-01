package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type rs []rune

func (s rs) Len() int           { return len(s) }
func (s rs) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s rs) Less(i, j int) bool { return s[i] < s[j] }

func solve() {
	s, t := getRunes(), getRunes()
	sort.Sort(rs(s))
	sort.Sort(sort.Reverse(rs(t)))

	s1, t1 := string(s), string(t)
	ans := "Yes"
	if s1 >= t1 {
		ans = "No"
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
