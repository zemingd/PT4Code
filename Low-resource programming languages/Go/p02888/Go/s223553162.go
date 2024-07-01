package main

import (
	"fmt"
	"sort"
)

type Edge struct {
	length int
}

type Edges []Edge

func (e Edges) Len() int {
	return len(e)
}

func (e Edges) Swap(i, j int) {
	e[i], e[j] = e[j], e[i]
}

func (e Edges) Less(i, j int) bool {
	return e[i].length > e[j].length
}

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	var l Edges
	l = make([]Edge, n)
	for i := 0; i < n; i++ {
		_, _ = fmt.Scan(&l[i].length)
	}
	//降順ソート
	sort.Sort(l)

	var a, b int
	var count int
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			a = l[i].length
			b = l[j].length

			tmpL := l[j+1:]
			flag := solve(tmpL, a - b + 1)
			//fmt.Println(flag)
			count += flag + 1
		}
	}
	fmt.Println(count)
}

func solve(a []Edge, t int) int {
	low := 0
	high := len(a) - 1
	for low <= high {
		mid := (low + high) / 2
		if t < a[mid].length {
			low = mid + 1
		} else if t > a[mid].length {
			high = mid - 1
		} else {
			return mid
		}
	}
	return high
}
