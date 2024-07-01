package main

import (
	"fmt"
)

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)
	xx := readMultiple(x)
	xy := readMultiple(y)
	xz := readMultiple(z)
	xd := make([]int, 0, x+y+z)
	for _, vx := range xx {
		for _, vy := range xy {
			for _, vz := range xz {
				xd = append(xd, vx+vy+vz)
			}
		}
	}
	r := mergeSort(xd)
	for i, v := range r {
		if i == k {
			return
		}
		fmt.Println(v)
	}
}

func readMultiple(n int) []int {
	xi := []int{}
	for i := 0; i < n; i++ {
		j := 0
		fmt.Scan(&j)
		xi = append(xi, j)
	}
	return xi
}

func mergeSort(l []int) []int {
	if len(l) < 2 {
		return l
	}
	mid := len(l) / 2
	a := mergeSort(l[:mid])
	b := mergeSort(l[mid:])
	return merge(a, b)
}

func merge(left, right []int) []int {
	var i, j int
	result := make([]int, len(left)+len(right))

	for i < len(left) && j < len(right) {
		if left[i] >= right[j] {
			result[i+j] = left[i]
			i++
		} else {
			result[i+j] = right[j]
			j++
		}
	}

	for i < len(left) {
		result[i+j] = left[i]
		i++
	}
	for j < len(right) {
		result[i+j] = right[j]
		j++
	}
	return result
}
