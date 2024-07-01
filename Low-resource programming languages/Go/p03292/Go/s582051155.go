package main

import (
	"fmt"
	"math"
	"sort"
)

func AbsInt(n1 int, n2 int) int {
	return int(math.Abs(float64(n1 - n2)))
}

func main() {
	var a1, a2, a3 int
	fmt.Scan(&a1, &a2, &a3)
	tasks := []int{a1, a2, a3}
	sort.Ints(tasks)
	fmt.Println(AbsInt(tasks[0], tasks[1]) + AbsInt(tasks[1], tasks[2]))
}
