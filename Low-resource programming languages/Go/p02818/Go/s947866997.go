package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	a, b := getInt(), getInt()
	k := getInt()

	if a >= k {
		a -= k
		k = 0
	} else {
		k -= a
		a = 0
	}

	b = max(0, b-k)

	fmt.Fprintln(wr, a, b)
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
