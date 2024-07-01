package main

import (
	"fmt"
)

// 以下の問題
// https://atcoder.jp/contests/abc137/tasks/abc137_b

func main() {
	var K, X int
	fmt.Scan(&K, &X)

	for i := X - K + 1; i <= X+K-1; i++ {
		fmt.Printf("%d ",i)
	}
}
