package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	var cal []int
	cal = append(cal, a+b)
	cal = append(cal, a-b)
	cal = append(cal, a*b)

	sort.Sort(sort.IntSlice(cal))

	fmt.Print(cal[0])

}
