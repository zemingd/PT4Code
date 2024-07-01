package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	m := intScanner()
	hs := make([]int, n)
	for i := 0; i < n; i++ {
		hs[i] = intScanner()
	}
	g := make([]bool, n)
	for i := 0; i < m; i++ {
		a, b := intScanner(), intScanner()
		a--
		b--
		if hs[a] > hs[b] {
			g[b] = true
		} else if hs[a] < hs[b] {
			g[a] = true
		} else {
			g[a] = true
			g[b] = true
		}
	}
	x := 0
	for _, y := range g {
		if !y {
			x++
		}
	}
	fmt.Println(x)
}
