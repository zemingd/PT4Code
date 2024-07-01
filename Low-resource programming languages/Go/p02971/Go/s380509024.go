package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
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
	N := nextInt()
	var top, sec int
	l := make([]int, N)
	for i := 0; i < N; i++ {
		n := nextInt()
		l[i] = n
		if top < n {
			sec = top
		} else {
			sec = max(sec, n)
		}
		top = max(top, n)
	}
	for i := 0; i < N; i++ {
		if l[i] == top {
			fmt.Println(sec)
		} else {
			fmt.Println(top)
		}
	}
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
