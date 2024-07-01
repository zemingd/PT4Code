package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	s := getString()
	idx := len(s)

	ans := "YES"
	for idx > 0 {
		ng := true

		if idx >= 5 {
			if (s[idx-5:idx] == "dream") || (s[idx-5:idx] == "erase") {
				idx -= 5
				continue
			}
		}
		if idx >= 6 {
			if s[idx-6:idx] == "eraser" {
				idx -= 6
				continue
			}
		}
		if idx >= 7 {
			if s[idx-7:idx] == "dreamer" {
				idx -= 7
				continue
			}
		}

		if ng {
			ans = "NO"
			break
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
	buf := 200001
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
