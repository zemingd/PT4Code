package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	vs := make([]int, n)
	for i := range vs {
		fmt.Scan(&vs[i])
	}

	even := map[int]int{}
	odd := map[int]int{}
	for i, v := range vs {
		if i%2 == 0 {
			even[v]++
		} else {
			odd[v]++
		}
	}

	ek1, ev1 := mapMax(even)
	ok1, ov1 := mapMax(odd)
	if ek1 != ok1 {
		fmt.Println(n - ev1 - ov1)
		return
	}

	delete(odd, ok1)
	delete(even, ek1)
	_, ov2 := mapMax(odd)
	_, ev2 := mapMax(even)
	if ev1 == ov1 {
		fmt.Println(n - ev1 - max(ov2, ev2))
	} else if ev1 > ov1 {
		fmt.Println(n - ev1 - ov2)
	} else {
		fmt.Println(n - ov1 - ev2)
	}
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func mapMax(m map[int]int) (mk int, mv int) {
	for k, v := range m {
		if v > mv {
			mv = v
			mk = k
		}
	}
	return
}
