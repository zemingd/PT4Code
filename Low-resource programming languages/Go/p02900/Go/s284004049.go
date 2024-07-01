package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	a, b := getInt(), getInt()
	d := gcd(a, b)
	primes := factorize(d)

	ans := len(primes) + 1
	fmt.Fprintln(wr, ans)
}

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func factorize(n int) map[int]int {
	m := make(map[int]int)
	for n%2 == 0 {
		n /= 2
		m[2]++
	}

	for i := 3; i*i <= n; i += 2 {
		if n%i != 0 {
			continue
		}
		for n%i == 0 {
			n /= i
			m[i]++
		}
	}

	if n != 1 {
		m[n]++
	}
	return m
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
