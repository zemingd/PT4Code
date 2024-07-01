package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}

func modPow(a, n, mod int) int {
	ret := 1
	for n > 0 {
		if n&1 == 1 {
			ret = (ret * a) % mod
		}
		a = (a * a) % mod
		n >>= 1
	}
	return ret
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	const mod = 1000000007

	n := nextInt()
	a := nextInts(n)

	// ones[i]: i+1桁目が1である数の個数
	ones := make([]int, 60)
	for i := range a {
		for b, d := a[i], 0; b > 0; b, d = b>>1, d+1 {
			ones[d] += b & 1
		}
	}

	ans := 0
	for d := 0; d < 60; d++ {
		add := ones[d] * (n - ones[d])
		for e := 0; e < d; e++ {
			add = (add << 1) % mod
		}
		ans = (ans + add) % mod
	}

	puts(ans)
}
