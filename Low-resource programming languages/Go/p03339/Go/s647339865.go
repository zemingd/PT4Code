package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := getInt()
	s := getRunes()

	ans := 0
	for i := 1; i < n; i++ {
		if s[i] == 'E' {
			ans++
		}
	}

	now := ans
	for i := 1; i < n; i++ {
		if s[i-1] == 'W' {
			now++
		}
		if s[i] == 'E' {
			now--
		}

		ans = min(ans, now)
	}

	fmt.Fprintln(wr, ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

// -----------------------------------------

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func main() {
	buf := 300001
	sc.Buffer(make([]byte, buf), buf)
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
