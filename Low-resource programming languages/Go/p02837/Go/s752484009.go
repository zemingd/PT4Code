package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := getInt()
	syogen := make([][]int, n)
	for i := range syogen {
		syogen[i] = makeIntSlice(n, -1)
		a := getInt()
		for j := 0; j < a; j++ {
			x, y := getInt()-1, getInt()
			syogen[i][x] = y
		}
	}

	ans := 0
	for bit := 0; bit < (1 << uint(n)); bit++ {
		ok := true
		honest := 0
	L:
		for i := 0; i < n; i++ {
			if bit&(1<<uint(i)) == 0 {
				continue
			}

			honest++
			for x, y := range syogen[i] {
				if y == -1 {
					continue
				}

				if bit&(1<<uint(x)) > 0 {
					if y == 0 {
						ok = false
						break L
					}
				} else {
					if y == 1 {
						ok = false
						break L
					}
				}
			}
		}
		if ok {
			ans = max(ans, honest)
		}
	}

	fmt.Fprintln(wr, ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func makeIntSlice(n, init int) []int {
	is := make([]int, n)
	for j := range is {
		is[j] = init
	}
	return is
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
