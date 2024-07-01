package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n, k := getInt(), getInt()
	nums := make([]int, 100001)
	for i := 0; i < n; i++ {
		a, b := getInt(), getInt()
		nums[a] += b
	}

	ans := -1
	for i, num := range nums {
		k -= num

		if k <= 0 {
			ans = i
			break
		}
	}

	fmt.Fprintln(wr, ans)
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
