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
	as := scanInts(n + 1)
	bs := scanInts(n)

	var cnt int
	for i := 0; i < n; i++ {
		if bs[n-1-i] > as[n-i] {
			cnt += as[n-i] + min(as[n-1-i], bs[n-1-i]-as[n-i])
			as[n-1-i] = max(as[n-1-i]-(bs[n-1-i]-as[n-i]), 0)
		} else {
			cnt += bs[n-1-i]
		}
	}

	fmt.Println(cnt)
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
