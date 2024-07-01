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

func abs(n int) int {
	if n >= 0 {
		return n
	}
	return -n
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	n := scanInt()
	x, y := scanInt(), scanInt()

	ans := make(map[int]int, n-1)

	for i := 1; i <= n; i++ {
		for j := i + 1; j <= n; j++ {
			d := j - i
			d = min(d, abs(x-i)+1+abs(y-j))
			d = min(d, abs(y-i)+1+abs(x-j))
			ans[d]++
		}
	}
	for i := 1; i < n; i++ {
		fmt.Println(ans[i])
	}
}
