package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	queue := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		queue[i] = tmp
	}
	mx := 0
	for l := 0; l < k + 1; l++ {
		minusesLeft := make([]int, 0)
		left := 0
		for ll := 0; ll < l && ll < n; ll++ {
			if queue[ll] < 0 {
				minusesLeft = append(minusesLeft, queue[ll])
			}
			left += queue[ll]
		}
		for r := 0; r < k - l + 1; r++ {
			right := 0
			minusesLeftRight := make([]int, len(minusesLeft))
			copy(minusesLeftRight, minusesLeft)
			for rr := n - 1; rr > (n - 1) - r && rr >= 0; rr-- {
				if queue[rr] < 0 {
					minusesLeftRight = append(minusesLeftRight, queue[rr])
				}
				right += queue[rr]
			}
			copied := make([]int, len(minusesLeftRight))
			copy(copied, minusesLeftRight)
			sort.Sort(sort.IntSlice(copied))
			dump := 0
			for i := 0; i < k - (l + r) && len(copied) > 0; i++ {
				dump -= copied[0]
				copied = copied[1:]
			}
			if right + left + dump > mx {
				mx = right + left + dump
			}
		}
	}
	fmt.Println(mx)
}