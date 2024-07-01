package main

import (
	"fmt"
	"sort"
	"strconv"
)

var nums map[int]int

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func dfs(s string) {
	if len(s) >= 11 {
		return
	}
	v, _ := strconv.Atoi(s)
	nums[v]++
	for i := 0; i < 10; i++ {
		d := int(s[len(s)-1] - '0')
		if abs(d-i) <= 1 {
			dfs(s + strconv.Itoa(i))
		}
	}
}

func main() {
	var K int
	fmt.Scan(&K)
	nums = make(map[int]int, 0)
	for i := 1; i < 10; i++ {
		dfs(strconv.Itoa(i))
	}
	// fmt.Println(len(nums))
	keys := make([]int, 0)
	for k := range nums {
		keys = append(keys, k)
	}
	sort.Ints(keys)
	// fmt.Println("keys:")
	// fmt.Println(keys[:20])
	fmt.Println(keys[K-1])
}
