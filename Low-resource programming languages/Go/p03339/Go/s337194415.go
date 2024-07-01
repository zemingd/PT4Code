package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	n := SingleInt()
	str := SingleStr()
	strs := strings.Split(str, "")

	cs := make([]int, 0, n)
	l := len(strs)
	for idx, _ := range strs {
		var c int
		for i := 0; i < idx; i++ {
			if strs[i] == "W" {
				c++
			}
		}
		right := idx + 1
		for i := right; i < l; i++ {
			if strs[i] == "E" {
				c++
			}
		}
		cs = append(cs, c)
	}

	sort.Sort(sort.IntSlice(cs))
	fmt.Printf("%#v\n", cs[0])
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func SingleStr() string {
	var s string
	fmt.Scan(&s)
	return s
}
