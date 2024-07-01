package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func max(x, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

func min(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

var sc = bufio.NewScanner(os.Stdin)

func inputln() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var n int
	n, _ = strconv.Atoi(inputln())
	r := make([]int, n)

	for i := range r {
		r[i], _ = strconv.Atoi(inputln())
	}
	minRate := r[0]
	maxVal := -2000000000

	for i := 1; i < n; i++ {
		maxVal = max(maxVal, r[i]-minRate)
		minRate = min(minRate, r[i])
	}

	fmt.Println(maxVal)
}

