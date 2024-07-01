package main

import (
	"fmt"
	"sort"
)

func minSlice(num []int)int{
	sort.Ints(num)
	return num[0]
}

func main() {
	var n int
	fmt.Scan(&n)
	count := 0
	p := make([]int, n)
	pcopy := make([]int, n)
	for i:=0; i<n; i++{
		fmt.Scan(&p[i])
		pcopy[i] = p[i]
	}
	// 前から走査して、そこまでのスライスの最小要素が最後の要素ならcount++
	// 参照のせいでおかしくなってる、ソートされてる？？
	for i:=1; i<=len(p); i++{
		if minSlice(pcopy[0:i]) == p[i-1]{
			count++
		}
	}

	fmt.Println(count)
}