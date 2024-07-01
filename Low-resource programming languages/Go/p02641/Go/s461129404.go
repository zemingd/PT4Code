package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e10
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)

	x, n := nextInt(), nextInt()
	if n == 0 {
		fmt.Println(x)
		return
	}

	m := make(map[int]bool)
	for i := 0; i < n; i++ {
		m[nextInt()] = true
	}

	for i := 0; i <= x; i++ {
		if _, ok := m[x-i]; !ok {
			fmt.Println(x-i)
			return
		}
		if _, ok := m[x+i]; !ok {
			fmt.Println(x+i)
			return
		}
	}
}

func intSlicePrint(el ...int) {
	first := true
	for _, v := range el {
		if v < 0 {
			continue
		}
		if !first {
			fmt.Printf(" ")
		}
		fmt.Printf("%v", v)
		first = false
	}
	fmt.Println("")
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
