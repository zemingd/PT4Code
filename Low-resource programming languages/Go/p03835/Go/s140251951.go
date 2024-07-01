package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	k, s := getInt(), getInt()
	m := min(k, s)

	ans := 0
	for x := 0; x <= m; x++ {
		for y := x; (y <= k) && (x+y <= s); y++ {
			for z := y; (z <= k) && (x+y+z <= s); z++ {
				if x+y+z != s {
					continue
				}

				switch {
				case (x == y) && (y == z):
					ans++
				case (x == y) || (y == z):
					ans += 3
				default:
					ans += 6
				}
			}
		}
	}
	fmt.Fprintln(wr, ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
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
