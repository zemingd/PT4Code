package main

import (
	"fmt"
	"sort"
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
	var n int
	var x []Arm

	fmt.Scan(&n)
	x = make([]Arm, n)
	for i := 0; i < n; i++ {
		var position, length int
		fmt.Scan(&position)
		fmt.Scan(&length)
		x[i].position = position
		x[i].length = length
	}

	sort.Sort(Arms(x))

	var remains int = n
	var target Arm = x[0]
	for i := 1; i < n; i++ {
		if isCross(target, x[i]) {
			remains--
			if target.position+target.length > x[i].position+x[i].length {
				target = x[i]
			}
		}
	}

	fmt.Println(remains)
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
