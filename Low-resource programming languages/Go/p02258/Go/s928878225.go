package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	n := stdin(sc)
	ary := make([]int, n)
	for i := 0; i < n; i++ {
		v := stdin(sc)
		ary[i] = v
	}
	maxv := -math.MaxInt32
	minv := ary[0]
	for i := 1; i < n; i++ {
		maxv = max(maxv, ary[i]-minv)
		minv = min(minv, ary[i])
	}
	fmt.Println(maxv)
}

func stdin(sc *bufio.Scanner) int {
	sc.Scan()
	num, _ := strconv.Atoi(sc.Text())
	return num
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

