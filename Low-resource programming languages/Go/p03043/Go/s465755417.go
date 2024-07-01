package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func solve() {
	n, k := getInt(), getInt()

	ans := 0.0
	for i := 1; i <= n; i++ {
		x := i
		cnt := 0.0
		for {
			if x >= k {
				break
			}
			x *= 2
			cnt++
		}
		ans += (1.0 / float64(n)) * math.Pow(0.5, cnt)
	}
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
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}

func getRunes() []rune {
	return []rune(getString())
}
