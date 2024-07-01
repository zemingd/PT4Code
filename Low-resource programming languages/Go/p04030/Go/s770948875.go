package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	s := getRunes()

	ans := ""
	for _, r := range s {
		switch r {
		case '0', '1':
			ans += string(r)
		case 'B':
			if len(ans) != 0 {
				ans = ans[0 : len(ans)-1]
			}
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
