package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func solve() {
	n := getInt()
	xs := getIntSlice(n)
	b1, b2 := func() (int, int) {
		tmp := make([]int, n)
		copy(tmp, xs)
		sort.Ints(tmp)
		return tmp[(n-1)/2], tmp[(n-1)/2+1]
	}()

	for _, x := range xs {
		ans := 0
		if x <= b1 {
			ans = b2
		} else {
			ans = b1
		}
		fmt.Fprintln(wr, ans)
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
