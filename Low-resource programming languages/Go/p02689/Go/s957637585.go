package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, m int
	nextInts(&n, &m)

	hs := make([]int, n)
	for i := range hs {
		nextInts(&hs[i])
	}

	to := make([][]int, n)
	for i := 0; i < m; i++ {
		var a, b int
		nextInts(&a, &b)
		a--
		b--
		to[a] = append(to[a], b)
		to[b] = append(to[b], a)
	}

	var ans int
	for i := 0; i < n; i++ {
		ok := true
		for _, j := range to[i] {
			if hs[i] <= hs[j] {
				ok = false
			}
		}
		if ok {
			ans++
		}
	}
	fmt.Println(ans)
}

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
}

func nextInts(ints ...*int) {
	for i := range ints {
		sc.Scan()
		*ints[i], _ = strconv.Atoi(sc.Text())
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
