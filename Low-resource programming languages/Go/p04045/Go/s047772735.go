package main

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	var s string
	fmt.Scanf("%s", &s)
	var m = map[int]struct{}{
		1: struct{}{}, 2: struct{}{}, 3: struct{}{}, 4: struct{}{}, 5: struct{}{},
		6: struct{}{}, 7: struct{}{}, 8: struct{}{}, 9: struct{}{}, 0: struct{}{},
	}
	ss := strings.Split(s, " ")
	for _, num := range ss {
		i, _ := strconv.Atoi(num)
		delete(m, i)
	}
	nums := make([]int, len(m))
	for k, _ := range m {
		nums = append(nums, k)
	}
	sort.Ints(nums)

	a5 := a / 10000
	a -= a5 * 10000
	a4 := a / 1000
	a -= a4 * 1000
	a3 := a / 100
	a -= a3 * 100
	a2 := a / 10
	a -= a2 * 10
	a1 := a / 1

	var ans string
	ans += foo(a5, nums)
	ans += foo(a4, nums)
	ans += foo(a3, nums)
	ans += foo(a2, nums)
	ans += foo(a1, nums)
	
	anss, _ := strconv.Atoi(ans)
	fmt.Println(anss)
}

func foo(a int, b []int) string {
	for _, i := range b {
		if i >= a {
			return strconv.Itoa(i)
		}
	}
	return ""
}
