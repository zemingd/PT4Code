package main

import (
	"fmt"
	"sort"
)

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

	if h%attack > 0 {
		return cnt + h/attack + 1
	}
	return cnt + h/attack
}

func main() {
	var n, h int
	fmt.Scan(&n, &h)
	arrB := make([]int, n)
	var attack = 0
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a, &arrB[i])
		if a > attack {
			attack = a
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(arrB)))

	fmt.Println(battle(h, attack, arrB))
}
