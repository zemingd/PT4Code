package main

import (
	."fmt"
	"sort"
)

func main() {
	var a []int
	for i := 0; i < 3; i++{
		var num int
		Scan(&num)
		a = append(a, num)
	}
	sort.Slice(a, func(i, j int) bool {return a[i] < a[j]})

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
