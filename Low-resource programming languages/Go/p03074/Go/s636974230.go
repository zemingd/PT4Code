package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n, k := getInt(), getInt()
	s := getRunes()
	if s[0] == '1' {
		k++
	}

	ans := 0
	r := 0
	for l := 0; l < n; l++ {
		r = max(r, l)
		for r < n && k > 0 {
			if r+1 < n && s[r] == '1' && s[r+1] == '0' {
				k--
			}
			r++
		}
		ans = max(ans, r-l)

		if l+1 < n && s[l] == '0' && s[l+1] == '1' {
			k++
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
