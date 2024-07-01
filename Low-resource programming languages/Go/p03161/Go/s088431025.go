package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var (
	n, k  int
	h, dp []int
)

func main() {
	io := newIo()
	n = io.nextInt()
	k = io.nextInt()

	h = make([]int, n)
	for i := range h {
		h[i] = io.nextInt()
	}

	dp = make([]int, n)
	for i := range dp {
		dp[i] = -1
	}

	fmt.Println(recDp(n - 1))
}

func recDp(i int) int {
	if i == 0 {
		return 0
	}
	if dp[i] != -1 {
		return dp[i]
	}
	res := math.MaxInt64
	for j := range make([]struct{}, k) {
		if i-j-1 >= 0 {
			res = min(res, recDp(i-j-1)+abs(h[i]-h[i-j-1]))
		}
	}
	dp[i] = res
	return res
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

type _io struct {
	reader    *bufio.Reader
	tokens    []string
	nextToken int
}

func newIo() *_io {
	return &_io{
		reader: bufio.NewReader(os.Stdin),
	}
}

func (_io *_io) nextLine() string {
	var buffer []byte
	for {
		line, isPrefix, _ := _io.reader.ReadLine()
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

func (_io *_io) next() string {
	for _io.nextToken >= len(_io.tokens) {
		line := _io.nextLine()
		_io.tokens = strings.Fields(line)
		_io.nextToken = 0
	}
	r := _io.tokens[_io.nextToken]
	_io.nextToken++
	return r
}

func (_io *_io) nextInt() int {
	i, _ := strconv.Atoi(_io.next())
	return i
}
