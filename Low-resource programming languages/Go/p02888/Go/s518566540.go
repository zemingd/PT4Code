package main

import (
	"fmt"
)

type minMax struct {
	min int
	max int
}

func main() {
	var n, v int
	var sticks []int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v)
		sticks = append(sticks, v)
	}
	matrix := make([][]minMax, n)
	for i := range matrix {
		matrix[i] = make([]minMax, n)
	}
	for indexB, b := range sticks {
		for indexC, c := range sticks[indexB+1:] {
			matrix[indexB][indexB+1+indexC] = createMinMax(b, c)
		}
	}
	count := 0
	for indexA, a := range sticks {
		for index, row := range matrix[indexA+1:] {
			for _, v := range row[indexA+1+index:] {
				if a > v.min && a < v.max {
					count++
				} else {
				}
			}
		}
	}
	fmt.Println(count)
}

func createMinMax(b, c int) (mm minMax) {
	obj := new(minMax)
	var min int
	if b < c {
		min = c - b
	} else {
		min = b - c
	}
	max := b + c
	obj.min = min
	obj.max = max
	return minMax{min: min, max: max}
}
