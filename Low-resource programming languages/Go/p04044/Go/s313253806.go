package main

import (
	"fmt"
	"sort"
)

// 集合にして昇順ソートしてJoinか空文字で出力して最後に改行

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	s := make([]string, n)
	for i := 0; i < n; i++ {
		var t string
		fmt.Scan(&t)
		s[i] = t
	}
	sort.Strings(s)
	for _, v := range s {
		fmt.Print(v)
	}
	fmt.Println()
}
