package main

import (
	."fmt"
	"sort"
	."math"
)

func main() {
	var a []int
	for i := 0; i < 3; i++{
		var num int
		Scan(&num)
		a = append(a, num)
	}
	sort.Sort(a)

	ans := 0
	for i := 0; i < 2; i++{
		ans += abs(a[i]-a[i+1])
	}
	Println(ans)
}

func abs(num int) int {
	if num > 0{
	return num
	}
	return -num
}
