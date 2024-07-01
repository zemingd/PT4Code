package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	as := make([]int, n)
	for i := range as {
		sc.Scan()
		as[i], _ = strconv.Atoi(sc.Text())
		as[i]--
	}
	m := make([]int, n)
	c := 0
	var cnt int
	for m[c] == 0 && c != 1 {
		m[c] = 1
		c = as[c]
		cnt++
	}
	if c == 1 {
		fmt.Println(cnt)
	} else {
		fmt.Println(-1)
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
