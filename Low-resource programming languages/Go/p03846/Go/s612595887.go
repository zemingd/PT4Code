package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := getInt()
	cnt := make([]int, n)
	for i := 0; i < n; i++ {
		a := getInt()
		cnt[a]++
	}

	ans := 1
L:
	for i := range cnt {
		switch i % 2 {
		case n % 2:
			if cnt[i] != 0 {
				ans = 0
				break L
			}
		default:
			if (i == 0) && (cnt[i] == 1) {
				continue
			} else if (i != 0) && (cnt[i] == 2) {
				ans = (ans * 2) % mod
				continue
			} else {
				ans = 0
				break L
			}
		}
	}
	fmt.Fprintln(wr, ans)
}

// -----------------------------------------

const (
	inf = 1 << 60
	mod = 1000000007
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
