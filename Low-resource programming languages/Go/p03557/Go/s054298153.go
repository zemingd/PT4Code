package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func solve() {
	n := getInt()
	as := getSortedInts(n)
	bs := getSortedInts(n)
	cs := getSortedInts(n)

	ans := 0
	for _, b := range bs {
		cntA := func() int {
			l, r := -1, n
			for (r - l) > 1 {
				c := (r + l) / 2
				if as[c] < b {
					l = c
				} else {
					r = c
				}
			}
			return l + 1
		}()
		cntC := func() int {
			l, r := -1, n
			for (r - l) > 1 {
				c := (r + l) / 2
				if cs[c] > b {
					r = c
				} else {
					l = c
				}
			}
			return n - r
		}()
		ans += cntA * cntC
	}

	fmt.Fprintln(wr, ans)
}

func getSortedInts(n int) []int {
	ret := getIntSlice(n)
	sort.Ints(ret)
	return ret
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
