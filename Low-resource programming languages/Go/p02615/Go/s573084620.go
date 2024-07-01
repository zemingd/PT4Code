package main

import (
	"fmt"
	"sort"
)

func getPosScore(array []int, value int) (int, int){
	length := len(array)
	max := 0
	pos := 0
	if (len(array) == 1) {
		return 0, array[0]
	}
	for i := 0; i < length; i++ {
		var score int
		right := array[i]
		if (right < max) {
			continue
		}
		left := array[(i-1+length) % length]
		if (left < right) {
			score = left
		} else {
			score = right
		}
		if (max < score) {
			max = score
			pos = i
		}
	}
	return pos, max
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	a := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	//fmt.Printf("%v", a)

	answer := 0
	current := make([]int, 1, n)
	current[0] = a[0]
	for i := 1; i < n; i++ {
		pos, score := getPosScore(current, a[i])
		answer += score
		current = append(current[:pos+1], current[pos:]...)
		current[pos] = a[i]
	}
	fmt.Printf("%d", answer)
}
