package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	a := scanInts(n)
	b := append([]int{}, a...)
	sort.Ints(b)

	for i := 0; i < n; i++ {
		if a[i] == b[len(b)-1] {
			fmt.Println(b[len(b)-2])
		} else {
			fmt.Println(b[len(b)-1])
		}
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

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
