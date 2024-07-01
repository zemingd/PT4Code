package main

import (
	"fmt"
)

func merge(left, right []int) (ret []int) {
	ret = []int{}
	for len(left) > 0 && len(right) > 0 {
		var x int
		if right[0] > left[0] {
			x, left = left[0], left[1:]
		} else {
			x, right = right[0], right[1:]
		}
		ret = append(ret, x)
	}
	ret = append(ret, left...)
	ret = append(ret, right...)
	return
}

func sort(left, right []int) (ret []int) {
	if len(left) > 1 {
		l, r := split(left)
		left = sort(l, r)
	}
	if len(right) > 1 {
		l, r := split(right)
		right = sort(l, r)
	}

	ret = merge(left, right)
	return
}

func split(values []int) (left, right []int) {
	left = values[:len(values) / 2]
	right = values[len(values) / 2:]
	return
}

func Sort(values []int) (ret []int) {
	left, right := split(values)
	ret = sort(left, right)
	return
}

func main(){
	a := make([]int,3)
	fmt.Scan(&a[0],&a[1],&a[2])
	b := Sort(a)
	fmt.Println(b[2]-b[0])
}
