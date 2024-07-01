package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := getInt()
	as := make([]int, n+2)
	as[0], as[n+1] = 0, 0
	sum := 0
	for i := 1; i < len(as); i++ {
		if i != len(as)-1 {
			as[i] = getInt()
		}
		sum += abs(as[i] - as[i-1])
	}

	for i := 1; i < n+1; i++ {
		x, y := abs(as[i]-as[i-1]), abs(as[i+1]-as[i])
		z := abs(as[i+1] - as[i-1])
		ans := sum - (x + y) + z

		fmt.Fprintln(wr, ans)
	}
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

// -----------------------------------------

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
