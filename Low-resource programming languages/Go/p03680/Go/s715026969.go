package main

import "fmt"

var a []int
var m = map[int]int{}

func main() {
	var N int
	fmt.Scan(&N)
	a = make([]int, N)
	for i := range a {
		fmt.Scan(&a[i])
	}
	m[0]++
	fmt.Println(search(a[0], 1))
}

func search(i int, cnt int) int {
	if a[i-1] == 2 {
		return cnt + 1
	}
	if _, ok := m[a[i-1]]; ok {
		return -1
	}
	m[a[i-1]]++
	return search(a[i-1], cnt+1)
}