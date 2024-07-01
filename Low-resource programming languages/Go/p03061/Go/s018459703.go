package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := getInt()
	as := getIntSlice(n)

	cumGcdL := make([]int, n)
	cumGcdL[0] = as[0]
	for i := 1; i < n; i++ {
		cumGcdL[i] = gcd(cumGcdL[i-1], as[i])
	}
	cumGcdR := make([]int, n)
	cumGcdR[n-1] = as[n-1]
	for i := n - 2; i >= 0; i-- {
		cumGcdR[i] = gcd(cumGcdR[i+1], as[i])
	}

	ans := -1
	for i := 0; i < n; i++ {
		var x int
		switch i {
		case 0:
			x = cumGcdR[i+1]
		case n - 1:
			x = cumGcdL[i-1]
		default:
			x = gcd(cumGcdL[i-1], cumGcdR[i+1])
		}

		ans = max(ans, x)
	}
	fmt.Fprintln(wr, ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
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
