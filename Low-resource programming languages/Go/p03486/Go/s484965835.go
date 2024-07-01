package main

import (
	"fmt"
	"sort"
)

func is_larger_than(tt, ss []int) bool {
	for i := range tt {
		if len(ss) == i {
			return true
		}
		if tt[i] > ss[i] {
			return true
		} else if tt[i] < ss[i] {
			return false
		}
	}
	return false
}

func to_ints(s string) []int {
	ss := make([]int, len(s))
	for i, r := range s {
		ss[i] = int(r)
	}
	return ss
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := to_ints(s)
	tt := to_ints(t)

	sort.Ints(ss)
	sort.Sort(sort.Reverse(sort.IntSlice(tt)))

	if is_larger_than(tt, ss) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
