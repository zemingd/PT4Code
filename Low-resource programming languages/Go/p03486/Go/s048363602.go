package main

import (
	"fmt"
	"sort"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	sr := make([]int, len(s))
	tr := make([]int, len(t))
	for i, v := range s {
		sr[i] = int(v)
	}
	for i, v := range t {
		tr[i] = int(v)
	}
	sort.Ints(sr)
	sort.Sort(sort.Reverse(sort.IntSlice(tr)))
	for i := 0; i < len(sr) && i < len(tr); i++ {
		if sr[i] < tr[i] {
			fmt.Println("Yes")
			return
		}
		if sr[i] > tr[i] {
			fmt.Println("No")
			return
		}
	}
	if len(sr) < len(tr) {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
