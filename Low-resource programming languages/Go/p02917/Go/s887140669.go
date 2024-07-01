package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const inf = 1 << 60

func main() {
	n := getInt()
	as := make([]int, n)
	bs := getIntSlice(n - 1)

	for i := range as {
		x, y := inf, inf
		if i > 0 {
			x = bs[i-1]
		}
		if i < n-1 {
			y = bs[i]
		}

		as[i] = min(x, y)
	}

	ans := sum(as...)
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func sum(ns ...int) int {
	var sum int
	for _, n := range ns {
		sum += n
	}
	return sum
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
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
