package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 300500), 300500)
}

func rs() string {
	sc.Scan()
	return sc.Text()
}

func cumSum(a string) []int {
	n := len(a)
	res := make([]int, n+1)
	sum := 0
	for i := 1; i <= n; i++ {
		if a[i-1] == 'E' {
			sum++
		}
		res[i] = sum
	}
	return res
}

func main() {
	_ = rs()
	s := rs()
	n := len(s)

	cse := cumSum(s)

	minCost := n
	for i := 1; i <= n; i++ {
		cost := 0
		cost = i - 1 - cse[i-1] + cse[n] - cse[i]
		if cost < minCost {
			minCost = cost
		}
	}
	fmt.Println(minCost)
}
