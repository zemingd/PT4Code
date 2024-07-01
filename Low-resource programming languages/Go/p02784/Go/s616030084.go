package main

import (
	"fmt"
)

type Arm struct {
	position int
	length   int
}

type Arms []Arm

func (x Arms) Len() int {
	return len(x)
}

func (x Arms) Swap(i, j int) {
	x[i], x[j] = x[j], x[i]
}

func (x Arms) Less(i, j int) bool {
	return x[i].position < x[j].position
}

func isCross(a, b Arm) bool {
	rightA := a.position + a.length
	leftB := b.position - b.length
	return rightA > leftB
}

func main() {
	var h, n int
	fmt.Scan(&h)
	fmt.Scan(&n)

	var a []int
	a = make([]int, n)
	var sum int = 0
	for i := 0; i < n; i++ {
		var x int
		fmt.Scan(&x)
		a[i] = x
		sum += x
	}

	if sum >= h {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func scanNums(len int) (nums []int) {
	var num int
	var i int
	for i = 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
