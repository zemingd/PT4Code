package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type pair struct {
	l, r int
}

func solve() {
	s := getRunes()
	n := len(s)

	ans := make([]int, n)
	cntR, cntL := 0, 0
	b := pair{-1, -1}
	for i, c := range s {
		if c == 'R' {
			cntR++
		} else {
			cntL++
		}

		if i == n-1 || (c == 'L' && s[i+1] == 'R') {
			ans[b.l] = (cntR+1)/2 + cntL/2
			ans[b.r] = (cntL+1)/2 + cntR/2

			cntR, cntL = 0, 0
		} else if c == 'R' && s[i+1] == 'L' {
			b.l, b.r = i, i+1
		}
	}

	for _, a := range ans {
		fmt.Fprintln(wr, a)
	}
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
