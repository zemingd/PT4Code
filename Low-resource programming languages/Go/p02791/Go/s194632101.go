package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	n := scanInt()
	ps := scanInts(n)

	var cnt int
	m := ps[0]
	for _, p := range ps {
		if p <= m {
			cnt++
		}
		m = min(m, p)
	}

	fmt.Println(cnt)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
