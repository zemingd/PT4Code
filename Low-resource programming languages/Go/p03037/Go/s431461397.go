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

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	_, m := scanInt(), scanInt()
	ll, rl := scanInt(), scanInt()

	for i := 1; i < m; i++ {
		l, r := scanInt(), scanInt()
		if rl < l || r < ll {
			fmt.Println(0)
			return
		}
		ll = max(ll, l)
		rl = min(rl, r)
	}
	fmt.Println(rl - ll + 1)
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
