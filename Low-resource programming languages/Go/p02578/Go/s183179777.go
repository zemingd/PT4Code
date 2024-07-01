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
	}
	var sum, ph int
	for i := range as {
		if as[i] < ph {
			sum += ph - as[i]
		} else {
			ph = as[i]
		}
	}
	fmt.Println(sum)
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
