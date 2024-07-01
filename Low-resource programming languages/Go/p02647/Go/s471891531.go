package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type As [][]int

func (a As) Len() int {
	return len(a)
}

func (a As) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a As) Less(i, j int) bool {
	return a[i][0] < a[j][0]
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	dp := make([][]int, k+1)
	for i := range dp {
		dp[i] = make([]int, n)
	}

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range dp[0] {
		sc.Scan()
		dp[0][i], _ = strconv.Atoi(sc.Text())
	}

	if k > 42 {
		for _ = range dp[0] {
			fmt.Printf("%d ", n)
		}
		fmt.Println()
		return
	}

	for i := 0; i < k; i++ {
		cs := make(As, 0)
		for j := 0; j < n; j++ {
			cs = append(cs, []int{max(0, j-dp[i][j]), 1})
			cs = append(cs, []int{min(j+dp[i][j]+1, n), -1})
		}
		sort.Sort(cs)
		var l, c int
		for j := 0; j < n; j++ {
			for l < len(cs) && cs[l][0] <= j {
				c += cs[l][1]
				l++
			}
			dp[i+1][j] = c
		}
	}
	for i := range dp[k] {
		fmt.Printf("%d ", dp[k][i])
	}
	fmt.Println()
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
