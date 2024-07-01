package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, _ := strconv.Atoi(input())
	k, _ := strconv.Atoi(input())

	prices := make([]int, n)
	for i := 0; i < n; i++ {
		p, _ := strconv.Atoi(input())
		prices[i] = p
	}

	sort.Ints(prices)

	min := 0
	for i := 0; i < k; i++ {
		min += prices[i]
	}

	fmt.Println(min)
}
