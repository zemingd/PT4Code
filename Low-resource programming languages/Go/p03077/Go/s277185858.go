package main

import (
	"fmt"
	"math"
)

func read() []int {
	var tmp int
	list := make([]int, 6)
	for i := 0; i < 6; i++ {
		fmt.Scan(&tmp)
		list[i] = tmp
	}
	return list
}

func fetchMinval(list []int) (min int, idx int) {
	min = math.MaxInt64
	idx = 0
	for i := 0; i < len(list)-1; i++ {
		if min > list[i] {
			min = list[i]
			idx = i
		}
	}
	return
}

func main() {
	list := read()
	min, idx := fetchMinval(list[1:])
	if idx == 0 {
		colSize := int64(math.Ceil(float64(list[0]) / float64(min)))
		lineSize := int64(len(list[1:]) - 1)
		fmt.Println(colSize + lineSize)
	} else {
		colSize := int64(math.Ceil(float64(list[0]) / float64(min)))
		lineSize := int64(len(list[1:]) - idx)
		fmt.Println(colSize + lineSize)
	}
}
