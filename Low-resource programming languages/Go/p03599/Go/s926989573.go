package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	a, b, c, d, e, f := getInt()*100, getInt()*100, getInt(), getInt(), getInt(), getInt()

	ws := make(map[int]bool)
	ss := make(map[int]bool)
	for i := 0; a*i <= f; i++ {
		for j := 0; a*i+b*j <= f; j++ {
			ws[a*i+b*j] = true
		}
	}
	for i := 0; c*i <= f; i++ {
		for j := 0; c*i+d*j <= f; j++ {
			ss[c*i+d*j] = true
		}
	}

	ansSw, ansS := 0, 0
	for w := range ws {
		for s := range ss {
			sw := s + w
			if sw > f {
				continue
			}
			if x := w / 100; s > x*e {
				continue
			}

			if s*ansSw >= ansS*sw {
				ansSw, ansS = sw, s
			}
		}
	}

	fmt.Fprintln(wr, ansSw, ansS)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
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
