package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}

func max(v int, values ...int) int {
	l := len(values)
	m := v

	for i := 0; i < l; i++ {
		if m < values[i] {
			m = values[i]
		}
	}

	return m
}

func min(v int, values ...int) int {
	l := len(values)
	m := v

	for i := 0; i < l; i++ {
		if m > values[i] {
			m = values[i]
		}
	}

	return m
}

var s []byte
var n int

func canMove(from, to int) bool {
	path := make([]int, n)
	path[from] = 1

	for i := from + 1; i <= to; i++ {
		if s[i] == '#' { // 岩ならNG
			path[i] = 0
		} else if path[i-1] == 1 { // 一つ前が通れるならOK
			path[i] = 1
		} else if i >= 2 && path[i-2] == 1 { // 2つ前が通れるならOK
			path[i] = 1
		}
	}

	return path[to] == 1
}

func main() {
	n = nextInt()
	a := nextInt() - 1
	b := nextInt() - 1
	c := nextInt() - 1
	d := nextInt() - 1
	s = nextBytes()

	if !canMove(a, c) {
		fmt.Println("No")
		return
	}
	if !canMove(b, d) {
		fmt.Println("No")
		return
	}

	if c < b || c < d { // AがBを飛び越さないケースはこのまま
		fmt.Println("Yes")
		return
	}

	// AがCに行くまでの途中に3マス連続のマスが必要
	lower := b - 1
	upper := min(c-1, n-2)
	for i := lower; i < upper; i++ {
		if s[i] == '.' && s[i+1] == '.' && s[i+2] == '.' {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
