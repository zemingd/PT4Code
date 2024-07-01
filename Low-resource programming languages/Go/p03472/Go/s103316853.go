package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, h int
	fmt.Scan(&n)
	fmt.Scan(&h)
	values1 := make([]int, n)
	values2 := make([]int, n)
	for i := 0; i < n; i++ {
		var x, y int
		fmt.Scan(&x)
		fmt.Scan(&y)
		values1[i] = x
		values2[i] = y
	}
	sort.Ints(values1)
	sort.Ints(values2)
	ans := (h + values1[n-1] - 1) / values1[n-1]
	sum := 0
	for i := 0; i < n; i++ {
		sum += values2[n-1-i]
		if sum >= h {
			if i+1 < ans {
				ans = i + 1
			}
			break
		}
		num := (h-sum+values1[n-1]-1)/values1[n-1] + i + 1
		if num < ans {
			ans = num
		}
	}
	fmt.Println(ans)
}
