package main

import (
	"fmt"
	"sort"
)

func ceilDivInt(end int, div int) int {
	if end%div > 0 {
		return end/div + 1
	}
	return end / div
}

func battle(h int, attack int, arrB []int) int {
	var cnt = 0
	for i := range arrB {
		if arrB[i] < attack {
			break
		}
		h -= arrB[i]
		cnt++
		if h <= 0 {
			break
		}
	}
	if h <= 0 {
		return cnt
	}
	return cnt + ceilDivInt(h, attack)
}

func main() {
	const nCity = 5
	var n, h int
	fmt.Scan(&n, &h)
	arrA, arrB := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&arrA[i], &arrB[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(arrA)))
	sort.Sort(sort.Reverse(sort.IntSlice(arrB)))

	var attack = arrA[0]

	fmt.Println(battle(h, attack, arrB))
}
