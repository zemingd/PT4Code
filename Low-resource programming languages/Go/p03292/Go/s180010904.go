package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var a1, a2, a3 int
	fmt.Scan(&a1, &a2, &a3)
	a := make([]int, 3)
	a[0] = Abs(a2 - a1)
	a[1] = Abs(a3 - a2)
	a[2] = Abs(a1 - a3)
	sort.Sort(sort.IntSlice(a))
	fmt.Println(a[0] + a[1])
}
func Abs(a int) int {
	return int(math.Abs(float64(a)))
}

