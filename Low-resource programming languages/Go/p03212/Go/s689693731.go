package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var n int

func rec(a, keta int, f3, f5, f7 bool) int {
	if a > n {
		return 0
	}

	ret := 0
	if f3 && f5 && f7 {
		ret++
	}
	ret += rec(a+3*keta, keta*10, true, f5, f7)
	ret += rec(a+5*keta, keta*10, f3, true, f7)
	ret += rec(a+7*keta, keta*10, f3, f5, true)

	return ret
}

func solve() {
	n = getInt()

	ans := rec(0, 1, false, false, false)
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
