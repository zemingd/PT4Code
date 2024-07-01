package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e8
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	N, K := nextInt(), nextInt()
	h := make([]int, N)
	for i := 0; i < N; i++ {
		h[i] = nextInt()
	}
	sort.Ints(h)
	result := h[N-1]
	for i := 0; i < N-K+1; i++ {
		if result > h[i+K-1]-h[i] {
			result = h[i+K-1] - h[i]
		}
	}
	fmt.Println(result)
}
