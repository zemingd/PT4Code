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

	ans := make([]int, n)
	for i := n; i >= 1; i-- {
		s := 0
		for j := i * 2; j <= n; j += i {
			s += ans[j-1]
		}
		ans[i-1] = ((s % 2) ^ as[i-1])
	}

	fmt.Fprintln(wr, sum(ans...))
	for i, a := range ans {
		if a == 1 {
			fmt.Fprintln(wr, i+1)
		}
	}
}

func sum(ns ...int) int {
	var sum int
	for _, n := range ns {
		sum += n
	}
	return sum
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
