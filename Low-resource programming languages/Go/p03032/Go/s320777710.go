package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func maxInt(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func sumValue(jewels []int) int {
	ret := 0
	for _, j := range jewels {
		ret += j
	}
	return ret
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()

	deque := make([]int, n)
	for i := range deque {
		deque[i] = nextInt()
	}

	ans := 0
	// i : 操作回数
	// j : 宝石を取り出す回数
	// m : 左から宝石を取り出す回数
	// l, r : 左右から宝石を取り出す処理を回す変数
	for i := 0; i <= minInt(k, n*2); i++ {
		for j := (i + 1) / 2; j <= minInt(i, n); j++ {
			for m := 0; m <= j; m++ {
				var jewels []int
				for l := 0; l < m; l++ {
					jewels = append(jewels, deque[l])
				}
				for r := 0; r < j-m; r++ {
					jewels = append(jewels, deque[n-1-r])
				}
				sort.Sort(sort.Reverse(sort.IntSlice(jewels)))
				jewels = jewels[0 : j-(i-j)]
				ans = maxInt(ans, sumValue(jewels))
			}
		}
	}

	fmt.Println(ans)
}
