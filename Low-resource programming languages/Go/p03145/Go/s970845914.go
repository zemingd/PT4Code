// https://atcoder.jp/contests/abc116/tasks/abc116_a
// +build ignore

package main

import (
	"fmt"
	"sort"
)

func main() {
	var area int
	sides := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&sides[i])
	}
	sort.Sort(sort.IntSlice(sides))
	area = (sides[0] * sides[1]) / 2
	fmt.Println(area)
}