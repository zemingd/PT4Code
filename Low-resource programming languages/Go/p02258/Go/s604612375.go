package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	prices := make([]int, n)
	for i := 0; i < n; i++ {
		prices[i] = nextInt()
	}
	min := prices[0]
	maxDiff := prices[1] - prices[0]
	for j := 1; j < n; j++ {
		diff := prices[j] - min
		if diff > maxDiff {
			maxDiff = diff
		}
		if prices[j] < min {
			min = prices[j]
		}
	}
	fmt.Println(maxDiff)
}

