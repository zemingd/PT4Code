package main

import (
	"fmt"
	"sort"
)

// 以下の問題
// https://atcoder.jp/contests/abc042/tasks/abc042_b

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	arr := make([]string, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	sort.Strings(arr)
	for _, v := range arr {
		fmt.Print(v)
	}
}
