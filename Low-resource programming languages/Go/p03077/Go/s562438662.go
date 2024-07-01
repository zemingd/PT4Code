package main

import (
	"fmt"
	"math"
)

func read() []int64 {
	var tmp int64
	list := make([]int64, 6)
	for i := 0; i < 6; i++ {
		fmt.Scan(&tmp)
		list[i] = tmp
	}
	return list
}

func fetchMinval(list []int64) (min int64, idx int) {
	min = math.MaxInt64
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
		div := float64(list[0]) / float64(min)
		colSize := int64(math.Ceil(div))
		lineSize := int64(len(list[1:]))
		fmt.Println(colSize + lineSize - 1)
	} else {
		colSize := int64(math.Ceil(float64(list[0]) / float64(min)))
		lineSize := int64(len(list[1:]) - idx)
		fmt.Println(colSize + lineSize)
	}
}
