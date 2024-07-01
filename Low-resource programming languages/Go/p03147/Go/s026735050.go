package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := getInt()
	hs := getIntSlice(n)

	ans := 0
	for {
		l, r := -1, 0
		for i, h := range hs {
			if h > 0 {
				l = i
				break
			}
		}
		if l == -1 {
			break
		}

		lowest := hs[l]
		for r = l + 1; ; r++ {
			if r == n || hs[r] == 0 {
				r--
				break
			}
			lowest = min(lowest, hs[r])
		}

		for i := l; i <= r; i++ {
			hs[i] -= lowest
		}
		ans += lowest
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
