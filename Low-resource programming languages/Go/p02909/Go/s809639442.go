package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	var (
		sunny  = "Sunny"
		cloudy = "Cloudy"
		rainy  = "Rainy"
	)

	s := getString()
	if s == sunny {
		s = cloudy
	} else if s == cloudy {
		s = rainy
	} else {
		s = sunny
	}

	fmt.Fprintln(wr, s)
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
